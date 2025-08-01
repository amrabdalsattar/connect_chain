part of 'add_product_cubit.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.loading() = AddProductLoadingState;
  const factory AddProductState.success() = AddProductSuccessState;
  const factory AddProductState.error(ApiErrorModel apiErrorModel) =
      AddProductErrorState;
  // Ai State
  const factory AddProductState.autoFillSucess() =
      AddProductAutoFillSuccessState;
  // Categories State
  const factory AddProductState.categoriesLoading() =
      AddProductCategoriesLoadingState;
  const factory AddProductState.categoriesSucces() =
      AddProductCategoriesSuccessState;
  const factory AddProductState.categoriesError() =
      AddProductCategoriesErrorState;

  // Image States
  const factory AddProductState.imageUploadSuccess(File image) =
      AddProductImageUploadSuccessState;
  const factory AddProductState.imageError(String error) =
      AddProductImageErrorState;
  const factory AddProductState.imageLoading() = AddProductImageLoadingState;
  const factory AddProductState.addProductInitial() = AddProductImageInitial;
  const factory AddProductState.imageDeleted() = AddProductImageDeleted;
  const factory AddProductState.imagesList(List imagesList) =
      AddProductImageListState;
}
