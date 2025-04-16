import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';
import 'package:connect_chain/features/home/data/models/revenue_chart_response_model.dart';

class RevenueChartDataSource {
  final ApiHelper _apiHelper;
  const RevenueChartDataSource(this._apiHelper);

  Future<Map<String, num>> getRevenueChartData(
      {required String supplierId, required int year}) async {
    final response = await _apiHelper.get(
      ApiRequestModel(
        endPoint: ApiConstants.revenueChartEP,
        body: {
          'supplierId': supplierId,
          'year': year,
        },
      ),
    );

    RevenueChartResponseModel revenueChartResponseModel =
        RevenueChartResponseModel.fromJson(response);
    return revenueChartResponseModel.chartData;
  }
}
