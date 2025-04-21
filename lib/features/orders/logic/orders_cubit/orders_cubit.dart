import 'package:bloc/bloc.dart';
import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:connect_chain/features/orders/data/models/order_response_model.dart';
import 'package:connect_chain/features/orders/data/repos/orders_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(this._ordersRepo) : super(const OrdersState.initial());

  final OrdersRepo _ordersRepo;

  Future<void> fetchSupplierOrders({int? orderStatusIndex}) async {
    emit(const FetchOrdersLoading());
    final result = await _ordersRepo.fetchSupplierOrders(
        '20044e2f-7c63-4ea5-a458-c39729d93e62',
        orderStatusIndex: orderStatusIndex);

    result.when(
      success: (orderResponseModel) {
        emit(FetchOrdersSuccess(orderResponseModel));
      },
      failure: (error) {
        emit(FetchOrdersError(error));
      },
    );
  }

  void changeFilteredStatus(int? statusIndex) async {
    emit(OrdersState.statusChanged(statusIndex));
    await fetchSupplierOrders(orderStatusIndex: statusIndex);
  }
}
