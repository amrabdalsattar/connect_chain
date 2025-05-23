import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/cubit/manage_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageProductsCubit, ManageProductsState>(
      buildWhen: (previous, current) =>
          current is ToggleRefreshButtonVisibilityState,
      builder: (_, state) => Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Visibility(
          visible: context.read<ManageProductsCubit>().isRefreshButtonVisible,
          child: InkWell(
            onTap: () {
              context
                  .read<ManageProductsCubit>()
                  .toggleRefreshButtonVisibility(false);

              context.read<ManageProductsCubit>().getSupplierProducts();
            },
            child: Row(
              children: [
                SvgPicture.asset(AppImages.refreshIcon),
                const HorizontalSpace(width: 6),
                Text(
                  'أعد تحميل المنتجات',
                  style: AppTextStyles.cairoPrimaryBold12,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
