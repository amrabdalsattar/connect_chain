import 'package:bloc/bloc.dart';
import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:connect_chain/features/orders/data/models/order_details_response_model.dart';
import 'package:connect_chain/features/orders/data/repos/order_details_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_state.dart';
part 'order_details_cubit.freezed.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsState> {
  final OrderDetailsRepo _orderDetailsRepo;
  OrderDetailsCubit(this._orderDetailsRepo)
      : super(const OrderDetailsState.initial());

  void fetchOrderDetails(int orderId) async {
    print('Cubit is Wrokingggg');
    emit(const OrderDetailsState.loading());
    final result = await _orderDetailsRepo.fetchOrderDetails(orderId);
    result.when(
        success: (orderResponseModel) =>
            emit(OrderDetailsState.success(orderResponseModel)),
        failure: (apiErrorModel) => emit(
              OrderDetailsState.error(apiErrorModel),
            ));
  }
}
