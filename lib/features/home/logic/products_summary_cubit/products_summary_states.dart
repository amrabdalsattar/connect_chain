import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/response_models/products_summary_response_model.dart';

sealed class ProductsSummaryState {
  const ProductsSummaryState();
}

class ProductsSummaryInitialState extends ProductsSummaryState {}

class ProductsSummaryLoadingState extends ProductsSummaryState {
  const ProductsSummaryLoadingState();
}

class ProductsSummarySuccessState extends ProductsSummaryState {
  final ProductsSummaryDataModel productsSummaryDataModel;
  const ProductsSummarySuccessState(this.productsSummaryDataModel);
}

class ProductsSummaryFailureState extends ProductsSummaryState {
  final ApiErrorModel apiErrorModel;
  const ProductsSummaryFailureState(this.apiErrorModel);
}
