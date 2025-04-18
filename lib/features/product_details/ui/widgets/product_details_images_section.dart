part of '../product_details_screen.dart';

class ProductDetailsImagesSection extends StatelessWidget {
  const ProductDetailsImagesSection({
    super.key,
    required this.product,
  });

  final ProductDetailsResponseModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        children: [
          verticalSpace(12),
          // SKU Section
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'SKU : ${product.sku}',
              style: AppTextStyles.cairoBlackBold13,
            ),
          ),
          // Product Image with Fade Animation
          verticalSpace(8),
          BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            buildWhen: (previous, current) =>
                current is ProductDetailsImageChangedState,
            builder: (context, state) {
              final imageUrl = state is ProductDetailsImageChangedState
                  ? product.imageUrls[state.imgIndex]
                  : (product.imageUrls.isNotEmpty ? product.imageUrls[0] : '');

              return Column(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Image.network(
                      imageUrl,
                      key: ValueKey(imageUrl),
                      width: 343.w,
                      height: 230.h,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(
                        child: Text('Image not available'),
                      ),
                    ),
                  ),
                  verticalSpace(16),
                  // Image Carousel Section
                  CustomImageSlider(
                    imagePaths: product.imageUrls,
                    selectedIndex: product.imageUrls.indexOf(imageUrl),
                    onImageTap: (selectedIndex) {
                      context
                          .read<ProductDetailsCubit>()
                          .changeSelectedImgUrl(selectedIndex);
                    },
                  ),
                ],
              );
            },
          ),
          verticalSpace(16),
          // Image Carousal section
          const CustomImageSlider(
            imagePaths: [],
          ),
          verticalSpace(25.5)
        ],
      ),
    );
  }
}
