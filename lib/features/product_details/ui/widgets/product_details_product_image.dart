part of '../product_deatils_screen.dart';

class ProductDetailsProductImage extends StatelessWidget {
  const ProductDetailsProductImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.heroImageView, arguments: imageUrl);
      },
      child: Hero(
        tag: imageUrl,
        child: AnimatedSwitcher(
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
            errorBuilder: (context, error, stackTrace) => const Center(
              child: Text('Image not available'),
            ),
          ),
        ),
      ),
    );
  }
}
