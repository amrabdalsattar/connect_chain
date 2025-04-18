import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/manage_supplier_products_request_model.dart';
import '../../data/repos/manage_products_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_products_state.dart';
part 'manage_products_cubit.freezed.dart';

class ManageProductsCubit extends Cubit<ManageProductsState> {
  final ManageProductsRepo _manageProductsRepo;
  ManageProductsCubit(this._manageProductsRepo)
      : super(const ManageProductsState.initial());

  void getSupplierProducts() async {
    emit(const ManageProductsState.loading());
    final result = await _manageProductsRepo.getSupplierProducts();
    result.when(
        success: (manageRequestModel) =>
            emit(ManageProductsState.success(manageRequestModel)),
        failure: (error) => emit(ManageProductsState.error(error)));
  }

  void deleteProduct(int productId) async {
    emit(const ManageProductsState.loading());
    final result = await _manageProductsRepo.deleteProduct(productId);
    result.when(success: (message) {
      emit(ManageProductsState.operationSuccess(message));
      getSupplierProducts();
    }, failure: (error) {
      emit(ManageProductsState.operationFailed(
          error.message ?? "unknown error"));
      getSupplierProducts();
    });
  }
}
