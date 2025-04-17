import 'package:connect_chain/features/add_product/data/datasources/add_product_datasource.dart';
import 'package:connect_chain/features/add_product/data/repos/add_product_repo.dart';
import 'package:connect_chain/features/edit_product/data/datasource/edit_product_datasourece.dart';
import 'package:connect_chain/features/edit_product/data/repos/edit_product_repo.dart';
import 'package:connect_chain/features/manage_products/data/datasource/manage_products_datasource.dart';
import 'package:connect_chain/features/manage_products/data/repos/manage_products_repo.dart';
import 'package:connect_chain/features/product_details/data/datasource/product_details_datasource.dart';
import 'package:connect_chain/features/product_details/data/repos/product_details_repo.dart';
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

  getIt.registerLazySingleton(() => AddProductRepo(getIt()));
  getIt.registerLazySingleton(() => AddProductDatasource(getIt()));

  getIt.registerLazySingleton(() => ManageProductsRepo(getIt()));
  getIt.registerLazySingleton(() => ManageProductsDatasource(getIt()));

  getIt.registerLazySingleton(() => EditProductRepo(getIt()));
  getIt.registerLazySingleton(() => EditProductDatasource(getIt()));

  getIt.registerLazySingleton(() => ProductDetailsRepo(getIt()));
  getIt.registerLazySingleton(() => ProductDetailsDatasource(getIt()));
}
