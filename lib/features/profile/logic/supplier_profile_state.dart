import '../../../core/networking/api_error_handler/api_error_model.dart';

import '../data/models/profile_response_model.dart';

sealed class SupplierProfileState {
  const SupplierProfileState();
}

class SupplierProfileLoadingState extends SupplierProfileState {
  const SupplierProfileLoadingState();
}

class SupplierProfileSuccessState extends SupplierProfileState {
  final SupplierData supplierData;
  const SupplierProfileSuccessState(this.supplierData);
}

class SupplierProfileErrorState extends SupplierProfileState {
  final ApiErrorModel apiErrorModel;
  const SupplierProfileErrorState(this.apiErrorModel);
}

class ProfileUpdateInitialState extends SupplierProfileState {
  const ProfileUpdateInitialState();
}

class ProfileUpdatedSuccess extends SupplierProfileState {
  const ProfileUpdatedSuccess();
}

class ProfileUpdateLoading extends SupplierProfileState {
  const ProfileUpdateLoading();
}
