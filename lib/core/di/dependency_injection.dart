import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/datasources/login_datasource.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/reset_password/data/datasources/reset_password_data_source.dart';
import '../../features/reset_password/data/repos/reset_password_repo.dart';
import '../../features/signup/data/datasources/signup_data_source.dart';
import '../../features/signup/data/repos/signup_repo.dart';
import '../networking/api_helper.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Authentication DI
  getIt.registerLazySingleton<Dio>(() => DioFactory.instance);
  getIt.registerLazySingleton<ApiHelper>(() => DioHelper(getIt()));

  getIt.registerLazySingleton(() => LoginDatasource(getIt()));
  getIt.registerLazySingleton(() => LoginRepo(getIt()));

  getIt.registerLazySingleton(() => SignupDataSource(getIt()));
  getIt.registerLazySingleton(() => SignupRepo(getIt()));

  getIt.registerLazySingleton(() => ResetPasswordDataSource(getIt()));
  getIt.registerLazySingleton(() => ResetPasswordRepo(getIt()));
}
