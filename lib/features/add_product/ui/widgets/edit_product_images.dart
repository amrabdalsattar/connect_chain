import 'package:connect_chain/core/widgets/product_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProductImages extends StatelessWidget {
  const EditProductImages({
    super.key,
    required this.imagesUrl,
    this.selectedIndex,
    this.onImageTap,
  });

  final List<String> imagesUrl;
  final int? selectedIndex;
  final ValueChanged<int>? onImageTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.w,
        runSpacing: 8.h,
        children: List.generate(
          imagesUrl.length,
          (index) => ProductImageWidget(
            showDeleteButton: true,
            imageUrl: imagesUrl[0],
            isSelected: selectedIndex == index,
            onTap: () => onImageTap?.call(index),
          ),
        ),
      ),
    );
  }
}
