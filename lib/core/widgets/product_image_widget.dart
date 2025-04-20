import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/app_images.dart';
import '../theming/colors_helper.dart';

class ProductImageWidget extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onTap;
  final bool showDeleteButton;
  final VoidCallback? onDelete;
  final ImageProvider imageProvider;

  const ProductImageWidget({
    super.key,
    this.isSelected = false,
    this.onTap,
    this.showDeleteButton = false,
    this.onDelete,
    required this.imageProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 70.h,
            width: 70.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 2,
                color: isSelected
                    ? ColorsHelper.primaryColor
                    : ColorsHelper.borderGray,
              ),
              image: DecorationImage(fit: BoxFit.cover, image: imageProvider),
            ),
          ),
        ),
        if (showDeleteButton)
          Positioned(
            top: 3.h,
            right: 4.w,
            child: InkWell(
              onTap: onDelete,
              child: SvgPicture.asset(
                AppImages.deleteIcon,
                width: 10.w,
                height: 10.h,
              ),
            ),
          ),
      ],
    );
  }
}
