import 'package:connect_chain/features/pre_login/data/repos/pre_login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pre_login_state.dart';

class PreLoginCubit extends Cubit<PreLoginState> {
  final PreLoginRepo _repo;
  PreLoginCubit(this._repo) : super(const PreLoginInitialState()) {
    updateFCMToken();
  }

  void updateFCMToken() async {
    final result = await _repo.updateFCMToken();
    result.when(
      success: (success) {
        if (!isClosed) emit(PreLoginSuccessState());
      },
      failure: (apiErrorModel) {
        if (!isClosed) emit(PreLoginErrorState(apiErrorModel));
      },
    );
  }
}
