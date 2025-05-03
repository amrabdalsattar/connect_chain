import '../data/models/update_profile_request_model.dart';
import 'package:flutter/material.dart';

import '../data/repos/supplier_profile_repo.dart';
import 'supplier_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupplierProfileCubit extends Cubit<SupplierProfileState> {
  final SupplierProfileRepo _repo;
  SupplierProfileCubit(this._repo) : super(const SupplierProfileLoadingState());

  void getSupplierProfileData() async {
    final result = await _repo.getSupplierProfile();

    result.when(success: (supplierData) {
      if (!isClosed) emit(SupplierProfileSuccessState(supplierData));
    }, failure: (apiErrorModel) {
      if (!isClosed) emit(SupplierProfileErrorState(apiErrorModel));
    });
  }

  bool isEditModeOn = false;

  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController address = TextEditingController();

  void startUpdatingProfile() {
    isEditModeOn = true;
    emit(const ProfileUpdateInitialState());
  }

  void updateSupplierProfile() async {
    final result = await _repo.updateSupplierProfile(
      UpdateProfileRequestModel(
        name: name.text,
        phoneNumber: phoneNumber.text,
        address: address.text,
        activityCategoryID: 1,
        paymentMethodsIDs: [1],
      ),
    );

    result.when(success: (success) {
      if (!isClosed) {
        emit(const ProfileUpdatedSuccess());
        getSupplierProfileData();
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) emit(SupplierProfileErrorState(apiErrorModel));
    });
  }
}
