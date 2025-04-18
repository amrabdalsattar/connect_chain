import 'package:connect_chain/core/networking/api_result.dart';
import 'package:connect_chain/features/home/data/models/request_models/dashboard_request_model.dart';
import 'package:connect_chain/features/home/data/models/response_models/top_sold_products_response_model.dart';
import 'package:connect_chain/features/home/data/repos/monthly_stats_repo.dart';
import 'package:connect_chain/features/home/data/repos/orders_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/products_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/revenue_chart_repo.dart';
import 'package:connect_chain/features/home/data/repos/top_sold_products_repo.dart';

import '../data/models/response_models/monthly_stats_response_model.dart';
import '../data/models/response_models/orders_summary_response_model.dart';
import '../data/models/response_models/products_summary_response_model.dart';

class DashboardUseCase {
  final TopSoldProductsRepo topSoldProductsRepo;
  final MonthlyStatsRepo monthlyStatsRepo;
  final RevenueChartRepo revenueChartRepo;
  final ProductsSummaryRepo productsSummaryRepo;
  final OrdersSummaryRepo ordersSummaryRepo;
  const DashboardUseCase({
    required this.monthlyStatsRepo,
    required this.ordersSummaryRepo,
    required this.productsSummaryRepo,
    required this.revenueChartRepo,
    required this.topSoldProductsRepo,
  });

  Future<ApiResult<List<TopSoldProductDataModel>>> getTopSoldProducts(
          DashboardRequestModel requestModel) async =>
      await topSoldProductsRepo.getTopSoldProducts(requestModel);

  Future<ApiResult<MonthlyStatsDataModel>> getMonthlyStats(
          DashboardRequestModel requestModel) async =>
      await monthlyStatsRepo.getMonthlyStats(requestModel);

  Future<ApiResult<Map<String, num>>> getRevenueChartData(
          {required String supplierId, required int year}) async =>
      await revenueChartRepo.getRevenueChartData(
          supplierId: supplierId, year: year);

  Future<ApiResult<ProductsSummaryDataModel>> getProductsSummary(
          String supplierId) async =>
      await productsSummaryRepo.getProductsSummary(supplierId);

  Future<ApiResult<OrdersSummaryDataModel>> getOrdersSummary(
          String supplierId) async =>
      await ordersSummaryRepo.getOrdersSummary(supplierId);
}
