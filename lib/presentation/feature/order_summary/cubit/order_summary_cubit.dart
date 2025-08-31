import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_note_reader/domain/model/medicine.dart';
import 'package:medi_note_reader/domain/model/prediction.dart';
import 'package:medi_note_reader/presentation/feature/order_summary/order_summary_item.dart';

import '../../../../domain/model/domain_error.dart';

part 'order_summary_state.dart';

part 'order_summary_cubit.freezed.dart';

class OrderSummaryCubit extends Cubit<OrderSummaryState> {
  OrderSummaryCubit() : super(OrderSummaryState.loading());

  emitList(List<OrderSummaryItem> items) {
    emit(OrderSummaryState.success(items));
  }

  emitError({required DomainError error, required Function() onTryAgain}) {
    emit(OrderSummaryState.error(error, onTryAgain));
  }

  emitLoading() {
    emit(OrderSummaryState.loading());
  }

  void removeItem(OrderSummaryItem item) {
    final updated = state.maybeWhen<List<OrderSummaryItem>>(
      success: (items) => items.where((i) => i.id != item.id).toList(),
      orElse: () => <OrderSummaryItem>[],
    );
    emit(OrderSummaryState.success(updated));
  }

  void updateItem(OrderSummaryItem item) {
    final updated = state.maybeWhen(
      success: (items) {
        return items.map((i) => i.id == item.id ? item : i).toList();
      },
      orElse: () => <OrderSummaryItem>[],
    );
    emit(OrderSummaryState.success(updated));
  }

  void addItem(Medicine med) {
    final item = OrderSummaryItem(
      quantity: 1,
      prediction: Prediction(imagePath: "imagePath", medicines: [med]),
    );
    final updated = state.maybeWhen<List<OrderSummaryItem>>(
      success: (items) => items.where((i) => i.id != item.id).toList(),
      orElse: () => <OrderSummaryItem>[],
    ) + [item];
    emit(OrderSummaryState.success(updated));
  }
}
