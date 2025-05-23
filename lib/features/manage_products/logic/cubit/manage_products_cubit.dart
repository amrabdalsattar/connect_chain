import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/manage_supplier_products_request_model.dart';
import '../../data/repos/manage_products_repo.dart';

part 'manage_products_cubit.freezed.dart';
part 'manage_products_state.dart';

class ManageProductsCubit extends Cubit<ManageProductsState> {
  final ManageProductsRepo _manageProductsRepo;
  ManageProductsCubit(this._manageProductsRepo)
      : super(const ManageProductsState.initial());

  List<ProductDataModel> productsLocalList = [];

  String query = '';
  void _productsSearch() async {
    if (query.isNullOrEmpty()) {
      if (!isClosed) emit(ManageProductsState.success(productsLocalList));
    }

    final filterProducts = productsLocalList.where((product) {
      return product.name.toLowerCase().contains(query.toLowerCase());
    }).toList();

    if (!isClosed) emit(ManageProductsState.success(filterProducts));
  }

  Timer? _searchDebounce;

  void debounceSearch(String searchQuery) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 300), () {
      query = searchQuery;
      _productsSearch();
    });
  }

  bool isRefreshButtonVisible = false;

  toggleRefreshButtonVisibility(bool newVisibility) {
    isRefreshButtonVisible = newVisibility;
    emit(ManageProductsState.toggleRefreshButtonVisibility(
        isRefreshButtonVisible));
  }

  void getSupplierProducts() async {
    emit(const ManageProductsState.loading());
    final result = await _manageProductsRepo.getSupplierProducts();
    result.when(success: (products) {
      if (!isClosed) {
        productsLocalList = products;
        if (productsLocalList.isNullOrEmpty()) {
          emit(const ManageProductsState.emptyProductsList(
              'No Products was found'));
        } else {
          emit(ManageProductsState.success(productsLocalList));
        }
      }
    }, failure: (error) {
      if (!isClosed) {
        emit(ManageProductsState.error(error));
      }
    });
  }

  void deleteProduct(int productId) async {
    final ProductDataModel product =
        productsLocalList.firstWhere((product) => product.id == productId);
    productsLocalList.removeWhere((product) => product.id == productId);

    if (productsLocalList.isEmpty) {
      emit(
          const ManageProductsState.emptyProductsList('No Products was found'));
    } else {
      emit(ManageProductsState.updatedProductsList(productsLocalList));
    }

    final result = await _manageProductsRepo.deleteProduct(productId);
    result.when(success: (message) {
      emit(ManageProductsState.success(productsLocalList));
      emit(ManageProductsState.operationSuccess(message));
    }, failure: (error) {
      productsLocalList.add(product);
      emit(ManageProductsState.success(productsLocalList));
      emit(ManageProductsState.operationFailed(
          error.message ?? 'unknown error'));
    });
  }
}
