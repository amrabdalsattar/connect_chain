import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/order_response_model.dart';
import '../../data/repos/orders_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(this._ordersRepo) : super(const OrdersState.initial());

  final OrdersRepo _ordersRepo;

  final String supplierId =
      SharedPreferencesHelper.getString(SharedPreferencesKeys.userId);

  Future<void> fetchSupplierOrders({int? orderStatusIndex}) async {
    emit(const FetchOrdersLoading());
    final result = await _ordersRepo.fetchSupplierOrders(
      supplierId,
      orderStatusIndex: orderStatusIndex,
    );

    result.when(
      success: (orderResponseModel) {
        if (!isClosed) {
          emit(FetchOrdersSuccess(orderResponseModel));
        }
      },
      failure: (error) {
        if (!isClosed) {
          emit(FetchOrdersError(error));
        }
      },
    );
  }

  void changeFilteredStatus(int? statusIndex) async {
    emit(OrdersState.statusChanged(statusIndex));
    await fetchSupplierOrders(orderStatusIndex: statusIndex);
  }
}
