import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_note_reader/presentation/feature/order_summary/order_summary_item.dart';
import 'package:medi_note_reader/presentation/helper/navigation_helper.dart';
import 'package:medi_note_reader/presentation/helper/ui_helper.dart';
import 'package:medi_note_reader/presentation/lang/app_localization.dart';
import 'package:medi_note_reader/presentation/widgets/error_message.dart';
import 'package:medi_note_reader/presentation/widgets/screen_padding.dart';

import '../create_order/create_order_cubit.dart';
import '../predictions/cubit/predictions_cubit.dart';
import '../search/cubit/search_medicine_cubit.dart';
import 'cubit/order_summary_cubit.dart';
import 'package:medi_note_reader/presentation/widgets/app_button.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final uiCubit = context.read<OrderSummaryCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text("Order".tr(context)), centerTitle: true),
      body: ScreenPadding(
        child: BlocListener<PredictionsCubit, PredictionsState>(
          listener: (context, state) {
            state.when(
              loading: () => uiCubit.emitLoading(),
              error:
                  (error) => uiCubit.emitError(error: error, onTryAgain: () {}),
              success: (predictions) {
                uiCubit.emitList(
                  predictions
                      .map((p) => OrderSummaryItem(prediction: p, quantity: 1))
                      .toList(),
                );
              },
            );
          },
          child: BlocBuilder<OrderSummaryCubit, OrderSummaryState>(
            builder: (context, state) {
              return state.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error:
                    (error, onTryAgain) =>
                        ErrorMessage(error: error, onTryAgain: onTryAgain),
                success:
                    (currentItems) => _OrderItemsContent(
                      orderItems: currentItems,
                      onRemove: uiCubit.removeItem,
                      onUpdate: uiCubit.updateItem,
                    ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _OrderItemsContent extends StatefulWidget {
  final List<OrderSummaryItem> orderItems;
  final void Function(OrderSummaryItem) onRemove;
  final void Function(OrderSummaryItem) onUpdate;

  const _OrderItemsContent({
    required this.orderItems,
    required this.onRemove,
    required this.onUpdate,
  });

  @override
  State<_OrderItemsContent> createState() => _OrderItemsContentState();
}

class _OrderItemsContentState extends State<_OrderItemsContent> {
  void _showSearchBottomSheet() {
    final uiCubit = context.read<OrderSummaryCubit>();
    final searchCubit = context.read<SearchMedicineCubit>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: uiCubit),
            BlocProvider.value(value: searchCubit),
          ],
          child: DraggableScrollableSheet(
            initialChildSize: 0.7, // starts at 70% of screen
            minChildSize: 0.4, // can't shrink below 40%
            maxChildSize: 0.95, // can expand up to 95%
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      controller: searchCubit.searchController,
                      decoration: InputDecoration(
                        hintText: "Search".tr(context),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onChanged: (_) => searchCubit.search(),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: BlocBuilder<
                        SearchMedicineCubit,
                        SearchMedicineState
                      >(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const SizedBox.shrink(),
                            loading:
                                () => Align(
                                  alignment: Alignment.topCenter,
                                  // stays at the top of its parent
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                            success: (medicines) {
                              if (medicines.isEmpty) {
                                return const Align(
                                  alignment: Alignment.topCenter,
                                  child: Text("No results found"),
                                );
                              }
                              return ListView.builder(
                                controller: scrollController,
                                itemCount: medicines.length,
                                itemBuilder: (context, index) {
                                  final suggestion = medicines[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: ActionChip(
                                      label: Text(
                                        "${suggestion.name ?? ""} ${suggestion.companyName ?? ""}",
                                      ),
                                      onPressed: () {
                                        uiCubit.addItem(suggestion);
                                        showToast(context, "Medicine added");
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                            error:
                                (error) => ErrorMessage(
                                  error: error,
                                  onTryAgain: () => searchCubit.search(),
                                ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  void showToast(BuildContext context, String message) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder:
          (context) => Positioned(
            bottom: 20, // adjust above bottom sheet
            left: 20,
            right: 20,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSurface,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  message,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.orderItems.isEmpty) {
      return Center(
        child: Text(
          "No items found".tr(context),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      );
    }

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: widget.orderItems.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final item = widget.orderItems[index];
              return _buildOrderCard(item);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: AppButton(
            onPressed: _showSearchBottomSheet,
            text: "Search & Add Medicines".tr(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: BlocConsumer<CreateOrderCubit, CreateOrderState>(
            listener: (context, state) {
              if (state.isSuccess) {
                context.showMySnackBar("Order created successfully");
                context.popRoute();
              }
            },
            builder: (context, state) {
              return AppButton(
                isLoading: state.isLoading,
                onPressed: () {
                  context.read<CreateOrderCubit>().createOrder(
                    items: widget.orderItems,
                  );
                },
                text: "Order".tr(context),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildOrderCard(OrderSummaryItem item) {
    return Dismissible(
      key: ValueKey(item.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.error,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) => widget.onRemove(item),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: DropdownButton<int>(
                  borderRadius: BorderRadius.circular(8),
                  isExpanded: true,
                  value: item.selectedIndex,
                  items: [
                    for (int i = 0; i < item.prediction.medicines.length; i++)
                      DropdownMenuItem(
                        value: i,
                        child: Text(
                          "${item.prediction.medicines[i].name} - ${item.prediction.medicines[i].companyName}",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                  onChanged: (val) {
                    if (val != null) {
                      setState(() => item.selectedIndex = val);
                      widget.onUpdate(item);
                    }
                  },
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:
                        File(item.prediction.imagePath).existsSync()
                            ? Image.file(
                              File(item.prediction.imagePath),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            )
                            : SizedBox.shrink(),
                  ),
                  const SizedBox(width: 16),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        onPressed:
                            item.quantity > 1
                                ? () {
                                  setState(() => item.quantity--);
                                  widget.onUpdate(item);
                                }
                                : null,
                      ),
                      Text(
                        "${item.quantity}",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        onPressed: () {
                          setState(() => item.quantity++);
                          widget.onUpdate(item);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
