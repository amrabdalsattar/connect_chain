import 'package:bloc/bloc.dart';
import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';
import 'package:connect_chain/features/manage_products/data/models/manage_supplier_products_request_model.dart';
import 'package:connect_chain/features/manage_products/data/repos/manage_products_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_produts_state.dart';
part 'manage_produts_cubit.freezed.dart';

class ManageProdutsCubit extends Cubit<ManageProdutsState> {
  final ManageProductsRepo _manageProductsRepo;
  ManageProdutsCubit(this._manageProductsRepo)
      : super(const ManageProdutsState.initial());

  void getSupplierProducts() async {
    emit(const ManageProdutsState.loading());
    final result = await _manageProductsRepo.getSupplierProducts();
    result.when(
        success: (manageRequestModel) =>
            emit(ManageProdutsState.success(manageRequestModel)),
        failure: (error) => emit(ManageProdutsState.error(error)));
  }

  void deleteProduct(int productId) async {
    emit(const ManageProdutsState.loading());
    final result = await _manageProductsRepo.deleteProduct(productId);
    result.when(success: (message) {
      emit(ManageProdutsState.operationSuccess(message));
      getSupplierProducts();
    }, failure: (error) {
      emit(
          ManageProdutsState.operationFailed(error.message ?? "unknown error"));
      getSupplierProducts();
    });
  }
}
