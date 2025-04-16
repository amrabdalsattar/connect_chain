class ApiConstants {
  static const String baseUrl = 'http://connectchain.runasp.net/api/';

  // Auth endpoints
  static const String loginEP = 'Account/SignIn';
  static const String signUpEP = 'Account/Register';
  static const String forgetPasswordEP = 'Account/ForgetPassword';
  static const String otpVerificationEP = 'Account/VerifyOtp';
  static const String resetPasswordEP = 'Account/ResetPassword';

  // Product endpoints
  static const String addProductEP = 'Product/AddProduct';
  static const String getSupplierProductsEP = 'Product/GetSupplierProducts';
  static const String deleteProductEP = 'Product/DeleteProduct';

  // Dashboard endpoints
  static const String monthlyStatsEP = 'Dashboard/GetMonthlyStats';
  static const String revenueChartEP = 'Dashboard/GetRevenueChart';
  static const String topSoldProductsEP = 'Dashboard/GetTopSoldProducts';
  static const String ordersSummaryEP = 'Dashboard/GetOrdersSummary';
  static const String productsSummaryEP = 'Dashboard/GetProductsSummary';

  static const Duration timeOut = Duration(seconds: 20);
}
