part of 'manage_produts_cubit.dart';

@freezed
class ManageProdutsState with _$ManageProdutsState {
  const factory ManageProdutsState.initial() = _Initial;
  const factory ManageProdutsState.success(
          ManageSupplierProductsResponseModel products) =
      ManageProductsSuccessState;
  const factory ManageProdutsState.loading() = ManageProductsLoadingState;
  const factory ManageProdutsState.error(ApiErrorModel error) =
      ManageProductsErrorState;

  // Delete Product
  const factory ManageProdutsState.delete() = ManageProductsDeleteState;
  const factory ManageProdutsState.edit(ProductDataModel product) =
      ManageEditsDeleteState;
  const factory ManageProdutsState.operationSuccess(String message) =
      MangeProductsoperationSuccessState;
  const factory ManageProdutsState.operationFailed(String message) =
      MangeProductsoperationFailedState;
}
