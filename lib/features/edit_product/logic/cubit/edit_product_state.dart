part of 'edit_product_cubit.dart';

@freezed
class EditProductState with _$EditProductState {
  const factory EditProductState.initial() = _Initial;
  const factory EditProductState.success() = EditProductSuccessState;
  const factory EditProductState.loading() = EditProductLoadingState;
  const factory EditProductState.error(ApiErrorModel apiErrorModel) =
      EditProductErrorState;
// Getting Data
  const factory EditProductState.getProductSuccess(
      EditProductRequestModel product) = GetEditProductSuccessState;

  // Image States
  const factory EditProductState.imageLoading() = EditProductImageLoadingState;
  const factory EditProductState.imageUploadSuccess(File imageFile) =
      EditProductImageUploadSuccessState;
  const factory EditProductState.imageError(String message) =
      EditProductImageErrorState;
  const factory EditProductState.imageDeleted() = EditProductImageDeletedState;
  const factory EditProductState.imageInitial() = EditProductImageInitial;
}
