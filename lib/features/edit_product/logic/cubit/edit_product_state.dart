part of 'edit_product_cubit.dart';

@freezed
class EditProductState with _$EditProductState {
  const factory EditProductState.initial() = _Initial;
  const factory EditProductState.success() = EditProductSuccessState;
  const factory EditProductState.loading() = EditProductLoadingState;
  const factory EditProductState.error(ApiErrorModel apiErrorModel) =

  // Image States
      EditProductErrorState;
  const factory EditProductState.imageUploading() =
      EditProductImageUploadingState;
  const factory EditProductState.imageUploadSuccess() =
      EditProductImageUploadSuccessState;
  const factory EditProductState.imageError() = EditProductImageErrorState;
  const factory EditProductState.imageDeleted() = EditProductImageDeletedState;
  const factory EditProductState.imageInitial() = EditProductImageInitial;
}
