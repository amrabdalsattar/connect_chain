part of 'rfq_response_cubit.dart';

enum RFQState {
  initialState,
  manageRFQState,
  quotationDetailsState,
  submitQuotatoinState
}

class RFQResponseState {
  final bool isSubmitting;
  final bool isSubmitted;
  final bool isLoading;
  final CreateQuotationRequestModel? newQuotatoin;
  final String? errorMessage;
  final SupplierRFQsRequest? currentSupplierRFQs;
  final SupplierRFQ? currentRFQ;
  final RFQState rfqState;

  RFQResponseState({
    required this.isSubmitting,
    required this.currentSupplierRFQs,
    required this.isSubmitted,
    required this.isLoading,
    required this.currentRFQ,
    required this.rfqState,
    this.newQuotatoin,
    this.errorMessage,
  });

  factory RFQResponseState.initial() {
    return RFQResponseState(
        isSubmitting: false,
        isSubmitted: false,
        isLoading: false,
        newQuotatoin: null,
        errorMessage: null,
        currentSupplierRFQs: null,
        currentRFQ: null,
        rfqState: RFQState.initialState);
  }

  RFQResponseState copyWith({
    bool? isSubmitting,
    bool? isSubmitted,
    bool? isLoading,
    CreateQuotationRequestModel? newQuotatoin,
    String? errorMessage,
    SupplierRFQsRequest? currentSupplierRFQs,
    SupplierRFQ? currentRFQ,
    RFQState? rfqState,
  }) {
    return RFQResponseState(
      currentSupplierRFQs: currentSupplierRFQs ?? this.currentSupplierRFQs,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSubmitted: isSubmitted ?? this.isSubmitted,
      newQuotatoin: newQuotatoin ?? this.newQuotatoin,
      errorMessage: errorMessage,
      isLoading: isLoading ?? this.isLoading,
      currentRFQ: currentRFQ ?? this.currentRFQ,
      rfqState: rfqState ?? this.rfqState,
    );
  }
}
