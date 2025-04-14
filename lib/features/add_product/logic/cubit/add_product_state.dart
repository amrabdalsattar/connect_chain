part of 'add_product_cubit.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.loading() = AddProductLoadingState;
  // const factory AddProductState.success() = _success;
  const factory AddProductState.error(ApiErrorModel apiErrorModel) =
      AddProductErrostate;
  // Image States
  const factory AddProductState.imageUploadSuccess(File image) =
      AddProductImageUploadSuccessState;
  const factory AddProductState.imageError(String error) =
      AddProdcutImageErrorState;
  const factory AddProductState.imageLoading() = AddproductImageloadingState;
  const factory AddProductState.intial() = AddProductImageInitial;
  const factory AddProductState.imageDeleted(File image) =
      AddproductImageDeleted;
}
