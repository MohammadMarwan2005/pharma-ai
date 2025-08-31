part of 'order_summary_cubit.dart';

@freezed
sealed class OrderSummaryState with _$OrderSummaryState {
  const factory OrderSummaryState.loading() = _Loading;

  const factory OrderSummaryState.success(List<OrderSummaryItem> currentItems) =
      _Success;

  const factory OrderSummaryState.error(DomainError error, Function() onTryAgain) = _Error;
}
