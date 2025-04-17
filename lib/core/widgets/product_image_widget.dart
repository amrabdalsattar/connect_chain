import 'dart:io';

import '../helpers/app_images.dart';
import '../theming/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductImageWidget extends StatelessWidget {
  final File? imgFile;
  final bool isSelected;
  final VoidCallback? onTap;
  final bool showDeleteButton;
  final VoidCallback? onDelete;
  final String? imageUrl;

  const ProductImageWidget({
    super.key,
    this.imgFile,
    this.isSelected = false,
    this.onTap,
    this.showDeleteButton = false,
    this.onDelete,
    this.imageUrl,
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
                image: imgFile != null
                    ? FileImage(imgFile!) as ImageProvider
                    : NetworkImage(imageUrl ?? ''),
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
