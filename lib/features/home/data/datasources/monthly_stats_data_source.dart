import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/api_helper.dart';
import '../../../../core/networking/api_request_model.dart';
import '../models/request_models/dashboard_request_model.dart';
import '../models/response_models/monthly_stats_response_model.dart';

class MonthlyStatsDataSource {
  final ApiHelper _apiHelper;
  const MonthlyStatsDataSource(this._apiHelper);

  Future<MonthlyStatsDataModel> getMonthlyStats(
      DashboardRequestModel requestModel) async {
    final response = await _apiHelper.get(
      ApiRequestModel(
        endPoint: ApiConstants.monthlyStatsEP,
        queries: requestModel.toJson(),
        headers: {
          'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
        },
      ),
    );

    final MonthlyStatsResponseModel monthlyStatsResponseModel =
        MonthlyStatsResponseModel.fromJson(response);

    return monthlyStatsResponseModel.monthlyStatsDataModel;
  }
}
