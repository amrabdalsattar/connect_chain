part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.success(
      ProductDetailsResponseModel product) = ProductDetailsSuccessState;
  const factory ProductDetailsState.failed(ApiErrorModel error) =
      ProductDetailsFailedState;
  const factory ProductDetailsState.loading() = ProductDetailsLoadingState;

  // Image States
    const factory ProductDetailsState.imageChanged(int imgIndex) = ProductDetailsImageChangedState;

}
