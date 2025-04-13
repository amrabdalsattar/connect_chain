
import 'package:connect_chain/core/widgets/product_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductOtherImagesSlider extends StatefulWidget {
  const ProductOtherImagesSlider({
    super.key,
    required this.imagesUrl,
    this.selectedIndex,
    this.onImageTap,
  });

  final List<String> imagesUrl;
  final int? selectedIndex;
  final ValueChanged<int>? onImageTap;

  @override
  State<ProductOtherImagesSlider> createState() =>
      _ProductOtherImagesSliderState();
}

class _ProductOtherImagesSliderState extends State<ProductOtherImagesSlider> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 80.w,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 80.w,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: _scrollLeft,
        ),
        Expanded(
          child: SizedBox(
            height: 60.h,
            child: AbsorbPointer(
              absorbing: true,
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    9,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: ProductImageWidget(
                        imageUrl: widget.imagesUrl[0],
                        isSelected: widget.selectedIndex == index,
                        onTap: () => widget.onImageTap?.call(index),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: _scrollRight,
        ),
      ],
    );
  }
}
