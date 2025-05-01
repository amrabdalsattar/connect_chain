import '../../../../core/networking/api_error_handler/api_error_model.dart';
import '../../data/models/response_models/orders_summary_response_model.dart';

sealed class OrdersSummaryState {
  const OrdersSummaryState();
}

class OrdersSummaryInitialState extends OrdersSummaryState {}

class OrdersSummaryLoadingState extends OrdersSummaryState {
  const OrdersSummaryLoadingState();
}

class OrdersSummarySuccessState extends OrdersSummaryState {
  final OrdersSummaryDataModel ordersSummaryDataModel;
  const OrdersSummarySuccessState(this.ordersSummaryDataModel);
}

class OrdersSummaryFailureState extends OrdersSummaryState {
  final ApiErrorModel apiErrorModel;
  const OrdersSummaryFailureState(this.apiErrorModel);
}
