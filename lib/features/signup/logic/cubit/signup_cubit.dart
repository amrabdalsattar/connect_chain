import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/signup_request_model.dart';
import '../../data/repos/signup_repo.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  void emitSignupStates() async {
    if (formKey.currentState!.validate()) {
      emit(const SignupState.loading());
      final result = await _signupRepo.signup(
        SignupRequestModel(
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            phoneNumber: phoneNumberController.text,
            email: emailController.text,
            password: passwordController.text,
            address: addressController.text,
            country: 'Egypt',
            confirmPassword: confirmPasswordController.text,
            role: 2),
      );
      result.when(
        success: (confirmationMessage) {
          emit(SignupState.success(confirmationMessage));
        },
        failure: (apiErrorModel) {
          emit(SignupState.error(apiErrorModel));
        },
      );
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
    return super.close();
  }
}
