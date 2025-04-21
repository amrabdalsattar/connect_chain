part of 'manage_products_cubit.dart';

@freezed
class ManageProductsState with _$ManageProductsState {
  const factory ManageProductsState.initial() = _Initial;
  const factory ManageProductsState.success(List<ProductDataModel> products) =
      ManageProductsSuccessState;
  const factory ManageProductsState.loading() = ManageProductsLoadingState;
  const factory ManageProductsState.error(ApiErrorModel error) =
      ManageProductsErrorState;

  const factory ManageProductsState.emptyProductsList(String errorMessage) =
      EmptyProductsList;

  const factory ManageProductsState.refreshProducts() = RefreshProductsState;
  const factory ManageProductsState.toggleRefreshButtonVisibility(
      bool isVisible) = ToggleRefreshButtonVisibilityState;

  // Delete Product
  const factory ManageProductsState.delete() = ManageProductsDeleteState;
  const factory ManageProductsState.edit(ProductDataModel product) =
      ManageEditsDeleteState;
  const factory ManageProductsState.operationSuccess(String message) =
      MangeProductsOperationSuccessState;
  const factory ManageProductsState.operationFailed(String message) =
      MangeProductsOperationFailedState;
  const factory ManageProductsState.updatedProductsList(
      List<ProductDataModel> products) = UpdatedProductsListState;
}
