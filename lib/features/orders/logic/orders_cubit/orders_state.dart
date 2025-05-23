part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = FetchOrdersLoading;
  const factory OrdersState.success(List<OrderModel> orders) =
      FetchOrdersSuccess;
  const factory OrdersState.error(ApiErrorModel error) = FetchOrdersError;

  const factory OrdersState.statusChanged(int? statusIndex) =
      FetchOrdersByStatus;
}
