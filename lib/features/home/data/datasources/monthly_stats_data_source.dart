import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/home/data/models/request_models/dashboard_request_model.dart';
import 'package:connect_chain/features/home/data/models/response_models/monthly_stats_response_model.dart';

class MonthlyStatsDataSource {
  final ApiHelper _apiHelper;
  const MonthlyStatsDataSource(this._apiHelper);

  Future<MonthlyStatsDataModel> getMonthlyStats(
      DashboardRequestModel requestModel) async {
    final response = await _apiHelper.get(
      ApiRequestModel(
        endPoint: ApiConstants.monthlyStatsEP,
        body: requestModel.toJson(),
      ),
    );

    MonthlyStatsResponseModel monthlyStatsResponseModel =
        MonthlyStatsResponseModel.fromJson(response);

    return monthlyStatsResponseModel.monthlyStatsDataModel;
  }
}
