part of '../reset_password_screen.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _passowrdController = TextEditingController();
    final TextEditingController _confirmPasswordController =
        TextEditingController();
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First Textfield
        Text('كلمه السر ', style: AppTextStyles.cairoDarkGrayBold16),
        verticalSpace(8),
        CustomTextFormField(
            hintText: 'أدخل كلمة المرور ',
            controller: _passowrdController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  AppRegex.isPasswordValid(value)) {
                return 'من فضلك أدخل كلمة مرور صالحة';
              }
            },
            prefixIconPath: AppImages.lockIcon),
        verticalSpace(24),
        // Second Textfield
        Text('تأكيد كلمه السر ', style: AppTextStyles.cairoDarkGrayBold16),
        verticalSpace(8),
        CustomTextFormField(
            hintText: 'أعد إدخال  كلمة المرور',
            controller: _confirmPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'من فضلك أدخل كلمة مرور صالحة';
              }
              if (value != _passowrdController.text) {
                return 'كلمة السر غير متطابقة';
              }
            },
            prefixIconPath: AppImages.lockIcon),
      ],
    ));
  }
}
