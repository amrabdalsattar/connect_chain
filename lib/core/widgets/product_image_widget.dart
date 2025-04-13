import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductImageWidget extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  final VoidCallback? onTap;
  final bool showDeleteButton;
  final VoidCallback? onDelete;

  const ProductImageWidget({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
    this.onTap,
    this.showDeleteButton = false,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 52.h,
            width: 62.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 2,
                color: isSelected
                    ? ColorsHelper.primaryColor
                    : ColorsHelper.borderGray,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
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
