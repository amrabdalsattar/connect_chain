import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/add_product/data/datasources/add_product_datasource.dart';
import '../../features/add_product/data/repos/add_product_repo.dart';
import '../../features/home/data/datasources/monthly_stats_data_source.dart';
import '../../features/home/data/datasources/orders_summary_datasource.dart';
import '../../features/home/data/datasources/products_summary_datasource.dart';
import '../../features/home/data/datasources/revenue_chart_data_source.dart';
import '../../features/home/data/repos/monthly_stats_repo.dart';
import '../../features/home/data/repos/orders_summary_repo.dart';
import '../../features/home/data/repos/products_summary_repo.dart';
import '../../features/home/data/repos/revenue_chart_repo.dart';
import '../../features/login/data/datasources/login_datasource.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/manage_products/data/datasource/manage_products_datasource.dart';
import '../../features/manage_products/data/repos/manage_products_repo.dart';
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

  // Product DI
  getIt.registerLazySingleton(() => AddProductRepo(getIt()));
  getIt.registerLazySingleton(() => AddProductDatasource(getIt()));

  getIt.registerLazySingleton(() => ManageProductsRepo(getIt()));
  getIt.registerLazySingleton(() => ManageProductsDatasource(getIt()));

  // Dashboard DI
  getIt.registerLazySingleton(() => MonthlyStatsDataSource(getIt()));
  getIt.registerLazySingleton(() => MonthlyStatsRepo(getIt()));

  getIt.registerLazySingleton(() => RevenueChartDataSource(getIt()));
  getIt.registerLazySingleton(() => RevenueChartRepo(getIt()));

  getIt.registerLazySingleton(() => OrdersSummaryDatasource(getIt()));
  getIt.registerLazySingleton(() => OrdersSummaryRepo(getIt()));

  getIt.registerLazySingleton(() => ProductsSummaryDatasource(getIt()));
  getIt.registerLazySingleton(() => ProductsSummaryRepo(getIt()));
}
