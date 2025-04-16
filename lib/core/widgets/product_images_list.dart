import 'dart:io';

import 'product_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageList extends StatelessWidget {
  const ProductImageList({
    super.key,
    required this.imageFiles,
    this.selectedIndex,
    this.onImageTap,
    this.onDeleteTap,
  });

  final List<File> imageFiles;
  final int? selectedIndex;
  final ValueChanged<int>? onImageTap;
  final ValueChanged<File>? onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.w,
        runSpacing: 8.h,
        children: List.generate(
          imageFiles.length,
          (index) => ProductImageWidget(
            onDelete: () => onDeleteTap?.call(imageFiles[index]),
            showDeleteButton: true,
            imgFile: imageFiles[index],
            isSelected: selectedIndex == index,
            onTap: () => onImageTap?.call(index),
          ),
        ),
      ),
    );
  }
}
