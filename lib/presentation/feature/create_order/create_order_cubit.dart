import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_note_reader/domain/model/domain_error.dart';
import 'package:medi_note_reader/domain/repo/order_repo.dart';
import 'package:medi_note_reader/presentation/feature/order_summary/order_summary_item.dart';

import '../../../data/model/order/order_request.dart';

part 'create_order_state.dart';

part 'create_order_cubit.freezed.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  final OrderRepo _orderRepo;

  CreateOrderCubit(this._orderRepo) : super(const CreateOrderState.initial());

  Future<void> createOrder({required List<OrderSummaryItem> items}) async {
    emit(const CreateOrderState.loading());
    final res = await _orderRepo.createOrder(
      orderRequest: OrderRequest.fromPresentation(items),
    );
    res.when(
      onSuccess: (successData) {
        emit(CreateOrderState.success());
      },
      onError: (error) {
        emit(CreateOrderState.error(error));
      },
    );
  }
}
