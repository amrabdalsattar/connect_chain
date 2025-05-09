import 'dart:async';

import '../../../../core/helpers/extensions.dart';

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

  List<OrderModel> localOrdersData = [];

  Timer? _searchDebounce;

  void _ordersSearch(String query) {
    if (query.isNullOrEmpty()) {
      emit(FetchOrdersSuccess(localOrdersData));
      return;
    }
    final filteredOrders = localOrdersData.where((order) {
      return order.customerName.toLowerCase().contains(query.toLowerCase());
    }).toList();
    emit(FetchOrdersSuccess(filteredOrders));
  }

  void debounceOrdersSearch(String query) {
    _searchDebounce?.cancel();

    _searchDebounce = Timer(const Duration(milliseconds: 300), () {
      _ordersSearch(query);
    });
  }

  Future<void> fetchSupplierOrders({int? orderStatusIndex}) async {
    emit(const FetchOrdersLoading());
    final result = await _ordersRepo.fetchSupplierOrders(
      supplierId,
      orderStatusIndex: orderStatusIndex,
    );

    result.when(
      success: (orders) {
        if (!isClosed) {
          localOrdersData = orders;
          emit(FetchOrdersSuccess(localOrdersData));
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
