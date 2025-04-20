import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class HeroImageView extends StatelessWidget {
  final String imageUrl;

  const HeroImageView({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: imageUrl,
        child: PhotoView(
          imageProvider: NetworkImage(imageUrl),
          backgroundDecoration: const BoxDecoration(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
