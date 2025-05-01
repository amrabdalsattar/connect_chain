part of 'order_details_cubit.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.initial() = _Initial;
  
  
  const factory OrderDetailsState.success(
      OrderDetailsResponseModel ordersResponseModel) = fetchOrderDetailsSuccess;
  const factory OrderDetailsState.loading() = fetchOrderDetailsLoading;
  const factory OrderDetailsState.error(ApiErrorModel apiErrorModel) =
      fetchOrderDetailsError;
}
