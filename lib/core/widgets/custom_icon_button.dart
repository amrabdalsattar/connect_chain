import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, required this.iconPath, this.onTap, this.width, this.height});

  final String iconPath;
  final VoidCallback? onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        iconPath,
        width: width ?? 18.w,
        height: height ?? 18.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
