part of 'rfq_response_cubit.dart';

class RFQResponseState {
  final bool isSubmitting;
  final bool isSubmitted;
  final bool isLoading;
  final CreateQuotationRequestModel? newQuotatoin;
  final String? errorMessage;
  final SupplierRFQsRequest? currentSupplierRFQs;
  final SupplierRFQ? currentRFQ;

  RFQResponseState({
    required this.isSubmitting,
    required this.currentSupplierRFQs,
    required this.isSubmitted,
    required this.isLoading,
    required this.currentRFQ,
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
        currentRFQ: null);
  }

  RFQResponseState copyWith(
      {bool? isSubmitting,
      bool? isSubmitted,
      bool? isLoading,
      CreateQuotationRequestModel? newQuotatoin,
      String? errorMessage,
      SupplierRFQsRequest? currentSupplierRFQs,
      SupplierRFQ? currentRFQ}) {
    return RFQResponseState(
      currentSupplierRFQs: currentSupplierRFQs ?? this.currentSupplierRFQs,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSubmitted: isSubmitted ?? this.isSubmitted,
      newQuotatoin: newQuotatoin ?? this.newQuotatoin,
      errorMessage: errorMessage,
      isLoading: isLoading ?? this.isLoading,
      currentRFQ: currentRFQ ?? this.currentRFQ,
    );
  }
}
