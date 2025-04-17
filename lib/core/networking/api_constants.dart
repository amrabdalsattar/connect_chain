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
  static const String updateProductEP = 'Product/UpdateProduct';
  static const String getProductDetailsEP = 'Product/GetProductDetails';

  static const Duration timeOut = Duration(seconds: 20);
}
