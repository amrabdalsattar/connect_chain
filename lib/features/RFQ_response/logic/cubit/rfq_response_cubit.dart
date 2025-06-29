import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../../core/helpers/cache/shared_preferences_keys.dart';
import '../../../manage_products/data/models/manage_supplier_products_request_model.dart';
import '../../../profile/data/models/profile_response_model.dart';
import '../../../profile/data/repos/supplier_profile_repo.dart';
import '../../data/models/create_quotation_request_model.dart';
import '../../data/models/rfq_line_item_model.dart';
import '../../data/models/supplier_quotations_request.dart';
import '../../data/repo/rfq_response_repo.dart';

part 'rfq_response_state.dart';

// Maximum number of steps in the RFQ response process
const int maxResponseSteps = 4;

class RFQResponseCubit extends Cubit<RFQResponseState> {
  final RfqResponseRepo _rfqResponseRepo;
  RFQResponseCubit(this._rfqResponseRepo) : super(RFQResponseState.initial());

  // Current step in the RFQ response process
  int currentStep = 0;

  // Form controllers for vendor details
  SupplierData? supplierData;

  // Form controllers for pricing and terms
  final deliveryTimeController = TextEditingController();
  final deliveryLocationController = TextEditingController();
  final shippingCostController = TextEditingController();
  final validityPeriodController = TextEditingController();
  final warrantyController = TextEditingController();
  final additionalTermsController = TextEditingController();
  final notesController = TextEditingController();

  // Form keys for validation
  final vendorFormKey = GlobalKey<FormState>();
  final pricingFormKey = GlobalKey<FormState>();
  final termsFormKey = GlobalKey<FormState>();
  final reviewFormKey = GlobalKey<FormState>();

  // Single line item for the response
  RFQLineItemModel? lineItem;

  // Selected currency
  String selectedCurrency = 'EGP';

  // Selected payment terms
  String selectedPaymentTerms = '';

  // RFQ ID that this response is for
  int? rfqId;

  // Example placeholders for required fields in createQuotation
  int paymentTermId = 1;
  int deliveryTimeInDays = 0;
  double deliveryFee = 0.0;
  String deliveryTerm = '';
  String notes = '';
  DateTime validUntil = DateTime.now();
  int categoryId = 0;

  // Api Calls
  Future<void> createQuotation() async {
    if (rfqId == null) {
      emit(state.copyWith(errorMessage: 'RFQ is required'));
    } else if (lineItem == null) {
      emit(state.copyWith(errorMessage: 'Please select a product'));
    } else {
      final prouctId = int.parse(lineItem!.productId);
      emit(state.copyWith(isLoading: true));
      final result = await _rfqResponseRepo.createQuotation(
        CreateQuotationRequestModel(
          rfqId: rfqId!,
          productId: prouctId,
          supplierId:
              SharedPreferencesHelper.getString(SharedPreferencesKeys.userId),
          unitPrice: lineItem!.unitPrice,
          paymentTermId: paymentTermId,
          deliveryTimeInDays: 30,
          deliveryFee: deliveryFee,
          deliveryTerm: 'deliveryTerm',
          notes: notes,
          validUntil: validUntil,
          quantity: lineItem!.quantity,
        ),
      );
      result.when(
        success: (data) {
          emit(state.copyWith(isLoading: false, isSubmitted: true));
          resetForm();
        },
        failure: (error) {
          emit(state.copyWith(isLoading: false, errorMessage: error.message));
        },
      );
    }
  }

  Future<void> getSupplierData() async {
    emit(state.copyWith(isLoading: true));
    final result = await SupplierProfileRepo(getIt()).getSupplierProfile();
    result.when(
      success: (supplier) {
        supplierData = supplier;
        emit(state.copyWith(isLoading: false));
      },
      failure: (error) {
        emit(state.copyWith(isLoading: false, errorMessage: error.message));
      },
    );
  }

  Future<void> getSupplierRFQs() async {
    emit(state.copyWith(isLoading: true));
    final result = await _rfqResponseRepo.getSupplierRFQs();
    result.when(
      success: (quotations) {
        emit(state.copyWith(isLoading: false, currentSupplierRFQs: quotations));
      },
      failure: (error) {
        emit(state.copyWith(isLoading: false, errorMessage: error.message));
      },
    );
  }

  // End of Apis

  void resetSubmissionFlag() {
    emit(state.copyWith(isSubmitted: false));
  }

  void setCurrentRfq(SupplierRFQ rfq) {
    rfqId = int.parse(rfq.id.toString());

    emit(state.copyWith(currentRFQ: rfq));
  }

  void setPaymentTerms(String terms) {
    selectedPaymentTerms = terms;
    emit(state.copyWith());
  }

  void addLineItem(ProductDataModel? product) {
    if (product != null) {
      lineItem = RFQLineItemModel(
        productName: product.name,
        quantity: state.currentRFQ!.quantity,
        unitPrice: product.price,
        totalPrice: product.price * 1,
        productId: product.id.toString(),
      );
      // categoryId=product.
      emit(state.copyWith());
    }
  }

  void removeLineItem() {
    lineItem = null;
    emit(state.copyWith());
  }

  void updateLineItem(RFQLineItemModel updatedItem) {
    lineItem = updatedItem;
    emit(state.copyWith());
  }

  double calculateTotalAmount() {
    return lineItem?.totalPrice ?? 0.0;
  }

  void updateCurrency(String currency) {
    selectedCurrency = currency;
    emit(state.copyWith());
  }

  bool canStep() {
    bool canProceed = false;

    switch (currentStep) {
      case 0: // Pricing step
        if (lineItem == null) {
          emit(state.copyWith(errorMessage: 'Please Select a product'));
          canProceed = false;
        } else {
          return canProceed = pricingFormKey.currentState?.validate() ?? false;
        }
        return canProceed;
      case 1: // Terms step
        return canProceed = termsFormKey.currentState?.validate() ?? false;
      case 2: // Review step
        return canProceed = true;
      default:
        return false;
    }
  }

  // Navigation methods for multi-step form
  void nextStep() {
    bool canProceed = false;

    switch (currentStep) {
      case 0: // Pricing step
        if (lineItem == null) {
          emit(state.copyWith(errorMessage: 'Please Select a product'));
        } else {
          canProceed = pricingFormKey.currentState?.validate() ?? false;
        }
        break;
      case 1: // Terms step
        canProceed = termsFormKey.currentState?.validate() ?? false;
        break;
      case 2: // Review step
        canProceed = true;
        break;
    }

    if (canProceed && currentStep < maxResponseSteps - 1) {
      currentStep++;
      emit(state.copyWith());
    } else if (!canProceed && currentStep == 1 && lineItem == null) {
      emit(state.copyWith(errorMessage: 'Please add a line item'));
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      currentStep--;
      emit(state.copyWith(errorMessage: null));
    }
  }

  void goToStep(int step) {
    if (step >= 0 && step < maxResponseSteps) {
      if (step < currentStep) {
        currentStep = step;
        emit(state.copyWith(errorMessage: null));
      } else if (canStep()) {
        currentStep = step;
        emit(state.copyWith(errorMessage: null));
      }
    }
  }

  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }

  void resetForm() {
    currentStep = 0;
    lineItem = null;
    selectedCurrency = 'EGP';
    rfqId = null;
    selectedPaymentTerms = '';

    // Clear all controllers

    deliveryTimeController.clear();
    deliveryLocationController.clear();
    shippingCostController.clear();
    validityPeriodController.clear();
    warrantyController.clear();
    additionalTermsController.clear();
    notesController.clear();

    emit(RFQResponseState.initial());
  }

  @override
  Future<void> close() {

    // Dispose pricing and terms controllers
    deliveryTimeController.dispose();
    deliveryLocationController.dispose();
    shippingCostController.dispose();  
    validityPeriodController.dispose();
    warrantyController.dispose();
    additionalTermsController.dispose();
    notesController.dispose();

    return super.close();
  }
}
