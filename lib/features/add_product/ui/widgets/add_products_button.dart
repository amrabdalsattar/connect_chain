part of '../add_product_screen.dart';

class AddProductButtons extends StatelessWidget {
  const AddProductButtons({
    super.key,
    required this.addProductCubit,
  });

  final AddProductCubit addProductCubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            title: 'حفظ',
            width: 166.w,
            onTap: () async {
              await addProductCubit.emitAddProductStates();
            },
          ),
          CustomButton(
            textStyle: AppTextStyles.cairoBlackBold16
                .copyWith(fontWeight: FontWeight.w500),
            title: 'الغاء',
            width: 166.w,
            color: ColorsHelper.white,
          ),
        ],
      ),
    );
  }
}
