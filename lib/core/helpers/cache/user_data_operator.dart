import '../../../features/login/data/models/login_response_model.dart';
import 'shared_preferences_helper.dart';
import 'shared_preferences_keys.dart';

class UserDataOperator {
  static Future<Map<String, dynamic>> getUserData() async {
    return {
      SharedPreferencesKeys.userFirstName:
          await SharedPreferencesHelper.getString(
              SharedPreferencesKeys.userFirstName),
      SharedPreferencesKeys.userLastName:
          await SharedPreferencesHelper.getString(
              SharedPreferencesKeys.userLastName),
      SharedPreferencesKeys.userAddress:
          await SharedPreferencesHelper.getString(
              SharedPreferencesKeys.userAddress),
      SharedPreferencesKeys.userEmail: await SharedPreferencesHelper.getString(
          SharedPreferencesKeys.userEmail),
      SharedPreferencesKeys.userPhoneNumber:
          await SharedPreferencesHelper.getString(
              SharedPreferencesKeys.userPhoneNumber),
    };
  }

  static Future<void> saveUserData(UserData userData) async {
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userFirstName, userData.firstName);
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userLastName, userData.lastName);
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userAddress, userData.address);
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userEmail, userData.email);
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userPhoneNumber, userData.phone);
  }

  static Future<void> clearUserData() async {
    await SharedPreferencesHelper.removeData(
        SharedPreferencesKeys.userFirstName);
    await SharedPreferencesHelper.removeData(
        SharedPreferencesKeys.userLastName);
    await SharedPreferencesHelper.removeData(SharedPreferencesKeys.userAddress);
    await SharedPreferencesHelper.removeData(SharedPreferencesKeys.userEmail);
    await SharedPreferencesHelper.removeData(
        SharedPreferencesKeys.userPhoneNumber);
  }

  Future<bool> isViewedOnboarding() async {
    return await SharedPreferencesHelper.getBool(
            SharedPreferencesKeys.isViewedOnboarding) ??
        false;
  }
}
