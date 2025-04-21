import 'package:connect_chain/core/networking/api_error_handler/api_error_model.dart';

sealed class SupplierProfileState {
  const SupplierProfileState();
}

class SupplierProfileLoadingState extends SupplierProfileState {
  const SupplierProfileLoadingState();
}

class SupplierProfileSuccessState extends SupplierProfileState {}

class SupplierProfileErrorState extends SupplierProfileState {
  final ApiErrorModel apiErrorModel;
  const SupplierProfileErrorState(this.apiErrorModel);
}

class SupplierProfileUpdatingState extends SupplierProfileState {}

class SupplierProfileUpdatedState extends SupplierProfileState {}

class SupplierProfileUpdateErrorState extends SupplierProfileState {
  final ApiErrorModel apiErrorModel;
  const SupplierProfileUpdateErrorState(this.apiErrorModel);
}
