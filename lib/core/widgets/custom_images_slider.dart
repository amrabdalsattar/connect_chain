import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_image_widget.dart';

class CustomImageSlider extends StatefulWidget {
  const CustomImageSlider({
    super.key,
    required this.imagePaths,
    this.selectedIndex,
    this.onImageTap,
    this.onDeleteTap,
    this.showDeleteButton,
  });

  final List<String> imagePaths;
  final int? selectedIndex;
  final ValueChanged<int>? onImageTap;
  final ValueChanged<int>? onDeleteTap;
  final bool? showDeleteButton;

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        (_scrollController.offset - 80.w)
            .clamp(0.0, _scrollController.position.maxScrollExtent),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _scrollRight() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        (_scrollController.offset + 80.w)
            .clamp(0.0, _scrollController.position.maxScrollExtent),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.imagePaths.length > 3
            ? IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: _scrollLeft,
              )
            : const SizedBox(),
        Flexible(
          fit: FlexFit.loose,
          child: SizedBox(
            height: 60.h,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(widget.imagePaths.length, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: ProductImageWidget(
                      onDelete: () => widget.onDeleteTap?.call(index),
                      showDeleteButton: widget.showDeleteButton ?? false,
                      isSelected: widget.selectedIndex == index,
                      onTap: () => widget.onImageTap?.call(index),
                      imageProvider: CachedNetworkImageProvider(
                        widget.imagePaths[index],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
        widget.imagePaths.length > 3
            ? IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: _scrollRight,
              )
            : const SizedBox(),
      ],
    );
  }
}
