import 'package:connect_chain/core/networking/api_constants.dart';
import 'package:connect_chain/core/networking/api_helper.dart';
import 'package:connect_chain/core/networking/api_request_model.dart';

import '../../../../core/helpers/token_helper.dart';

class PreLoginDatasource {
  final ApiHelper _apiHelper;
  const PreLoginDatasource(this._apiHelper);

  Future<void> updateFCMToken(String fcmToken) async {
    await _apiHelper.put(
      ApiRequestModel(
        endPoint: ApiConstants.updateFCMTokenEP,
        headers: {
          'Authorization': 'Bearer ${await TokenHelper.getSecuredUserToken()}',
          'fcmToken': fcmToken,
        },
      ),
    );
  }
}
