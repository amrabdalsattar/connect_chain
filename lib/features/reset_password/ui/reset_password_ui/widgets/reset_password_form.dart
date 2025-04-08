part of '../reset_password_screen.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passowrdController = TextEditingController();
    final TextEditingController confirmPasswordController =
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
            controller: passowrdController,
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
            controller: confirmPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'من فضلك أدخل كلمة مرور صالحة';
              }
              if (value != passowrdController.text) {
                return 'كلمة السر غير متطابقة';
              }
            },
            prefixIconPath: AppImages.lockIcon),
      ],
    ));
  }
}
