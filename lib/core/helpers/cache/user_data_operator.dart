import '../../../features/login/data/models/login_response_model.dart';
import 'shared_preferences_helper.dart';
import 'shared_preferences_keys.dart';

class UserDataOperator {
  static Future<Map<String, dynamic>> getUserData() async {
    return {
      SharedPreferencesKeys.userName: await SharedPreferencesHelper.getString(
          SharedPreferencesKeys.userName),
      SharedPreferencesKeys.userAddress:
          await SharedPreferencesHelper.getString(
              SharedPreferencesKeys.userAddress),
      SharedPreferencesKeys.userEmail: await SharedPreferencesHelper.getString(
          SharedPreferencesKeys.userEmail),
      SharedPreferencesKeys.userBusinessType:
          await SharedPreferencesHelper.getString(
              SharedPreferencesKeys.userBusinessType),
      SharedPreferencesKeys.userPhoneNumber:
          await SharedPreferencesHelper.getString(
              SharedPreferencesKeys.userPhoneNumber),
    };
  }

  static Future<void> saveUserData(UserData userData) async {
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userName, userData.name);
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userBusinessType, userData.businessType);

    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userAddress, userData.address);
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userEmail, userData.email);
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userPhoneNumber, userData.phone);
  }

  static Future<void> clearUserData() async {
    await SharedPreferencesHelper.removeData(SharedPreferencesKeys.userName);
    await SharedPreferencesHelper.removeData(SharedPreferencesKeys.userAddress);
    await SharedPreferencesHelper.removeData(SharedPreferencesKeys.userEmail);
    await SharedPreferencesHelper.removeData(
        SharedPreferencesKeys.userPhoneNumber);
    await SharedPreferencesHelper.removeData(
        SharedPreferencesKeys.userBusinessType);
  }

  static setViewOnBoardingBool() async {
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.isViewedOnboarding, true);
  }

  static Future<bool> isViewedOnboarding() async {
    return await SharedPreferencesHelper.getBool(
            SharedPreferencesKeys.isViewedOnboarding) ??
        false;
  }
}
