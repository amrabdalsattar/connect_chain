import 'package:connect_chain/core/helpers/cache/user_data_operator.dart';
import 'package:connect_chain/features/profile/logic/supplier_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupplierProfileCubit extends Cubit<SupplierProfileState> {
  SupplierProfileCubit() : super(const SupplierProfileLoadingState());

  Map<String, dynamic> supplierData = UserDataOperator.getUserData();
}
