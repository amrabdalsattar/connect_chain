import '../data/repos/supplier_profile_repo.dart';
import 'supplier_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupplierProfileCubit extends Cubit<SupplierProfileState> {
  final SupplierProfileRepo _repo;
  SupplierProfileCubit(this._repo) : super(const SupplierProfileLoadingState());

  void getSupplierProfileData() async {
    final result = await _repo.getSupplierProfile();

    result.when(
        success: (supplierData) =>
            emit(SupplierProfileSuccessState(supplierData)),
        failure: (apiErrorModel) =>
            emit(SupplierProfileErrorState(apiErrorModel)));
  }
}
