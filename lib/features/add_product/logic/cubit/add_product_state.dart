part of 'add_product_cubit.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.loading() = AddProductLoadingState;
  const factory AddProductState.success() = AddProductSuccessState;
  const factory AddProductState.error(ApiErrorModel apiErrorModel) =
      AddProductErrorState;

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
