import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/response_models/top_sold_products_response_model.dart';

sealed class TopSoldProductsState {
  const TopSoldProductsState();
}

class TopSoldProductsInitialState extends TopSoldProductsState {}

class TopSoldProductsLoadingState extends TopSoldProductsState {
  const TopSoldProductsLoadingState();
}

class TopSoldProductsSuccessState extends TopSoldProductsState {
  final List<TopSoldProductDataModel> products;
  const TopSoldProductsSuccessState(this.products);
}

class TopSoldProductsFailureState extends TopSoldProductsState {
  final ApiErrorModel apiErrorModel;
  const TopSoldProductsFailureState(this.apiErrorModel);
}
