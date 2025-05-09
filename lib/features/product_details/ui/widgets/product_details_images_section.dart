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
          const VerticalSpace(height: 12),
          // SKU Section
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'SKU : ${product.sku}',
              style: AppTextStyles.cairoBlackBold13,
            ),
          ),
          // Product Image with Fade Animation
          const VerticalSpace(height: 8),
          BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            buildWhen: (previous, current) =>
                current is ProductDetailsImageChangedState ||
                current is ProductDetailsImageChangedState,
            builder: (context, state) {
              final imageUrl = state is ProductDetailsImageChangedState
                  ? product.imageUrls[state.imgIndex]
                  : (product.imageUrls.isNotEmpty ? product.imageUrls[0] : '');

              return Column(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 400),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: CustomImageWidget(
                      key: ValueKey(imageUrl),
                      onTap: () {
                        context.pushNamed(
                          Routes.heroImageView,
                          arguments: imageUrl,
                        );
                      },
                      imageUrl: imageUrl,
                      height: 230.h,
                      width: 343.w,
                    ),
                  ),

                  const VerticalSpace(height: 16),
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
          const VerticalSpace(height: 16),
        ],
      ),
    );
  }
}
