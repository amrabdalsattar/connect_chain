import '../../../core/helpers/cache/shared_preferences_helper.dart';
import '../../../core/helpers/cache/shared_preferences_keys.dart';
import '../data/models/profile_response_model.dart';
import '../data/models/update_profile_request_model.dart';
import 'package:flutter/material.dart';

import '../data/repos/supplier_profile_repo.dart';
import 'supplier_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupplierProfileCubit extends Cubit<SupplierProfileState> {
  final SupplierProfileRepo _repo;
  SupplierProfileCubit(this._repo) : super(const SupplierProfileLoadingState());

  bool isEditModeOn = false;

  String supplierName =
      SharedPreferencesHelper.getString(SharedPreferencesKeys.userName);
  String supplierEmail =
      SharedPreferencesHelper.getString(SharedPreferencesKeys.userEmail);

  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController companyPhoneNumber = TextEditingController();
  TextEditingController companyAddress = TextEditingController();

  void getSupplierProfileData() async {
    final result = await _repo.getSupplierProfile();

    result.when(success: (supplierData) async {
      if (!isClosed) {
        await assignSupplierData(supplierData);
        emit(SupplierProfileSuccessState(supplierData));
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) emit(SupplierProfileErrorState(apiErrorModel));
    });
  }

  void startUpdatingProfile() {
    isEditModeOn = true;
    emit(const ProfileUpdateInitialState());
  }

  void updateSupplierProfile() async {
    emit(const ProfileUpdateLoading());
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
        isEditModeOn = false;
        emit(const ProfileUpdateSuccess());
        getSupplierProfileData();
      }
    }, failure: (apiErrorModel) {
      if (!isClosed) emit(ProfileUpdateFailure(apiErrorModel));
    });
  }

  Future<void> assignSupplierData(SupplierData supplierData) async {
    name.text = supplierData.name ?? '';
    phoneNumber.text = supplierData.phoneNumber;
    address.text = supplierData.address;
    email.text = supplierData.email;
    companyName.text = 'ConnectChain';
    companyPhoneNumber.text = supplierData.phoneNumber;
    companyAddress.text = supplierData.address;
  }

  @override
  Future<void> close() {
    email.dispose();
    name.dispose();
    phoneNumber.dispose();
    address.dispose();
    companyAddress.dispose();
    companyName.dispose();
    companyPhoneNumber.dispose();
    return super.close();
  }
}
