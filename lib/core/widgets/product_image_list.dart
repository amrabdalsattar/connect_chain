import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_image_widget.dart';

class ProductImageList extends StatelessWidget {
  const ProductImageList({
    super.key,
    required this.imageFiles,
    this.selectedIndex,
    this.onImageTap,
    this.onDeleteTap,
  });

  final List<dynamic> imageFiles;
  final int? selectedIndex;
  final ValueChanged<int>? onImageTap;
  final ValueChanged<int>? onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.w,
        runSpacing: 8.h,
        children: List.generate(imageFiles.length, (index) {
          final image = imageFiles[index];
          return ProductImageWidget(
            onDelete: () => onDeleteTap?.call(index),
            showDeleteButton: true,
            isSelected: selectedIndex == index,
            onTap: () => onImageTap?.call(index),
            imageProvider: image is File
                ? FileImage(image)
                : NetworkImage(image.toString()),
          );
        }),
      ),
    );
  }
}
