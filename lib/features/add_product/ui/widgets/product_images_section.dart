import 'package:flutter/material.dart';
import 'package:connect_chain/core/widgets/upload_image.dart';
import 'package:connect_chain/features/add_product/ui/widgets/edit_product_images.dart';
import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';

class ProductImagesSection extends StatelessWidget {
  const ProductImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'صور المنتج',
          style: AppTextStyles.cairoBlackBold16.copyWith(color: Colors.black),
        ),
        verticalSpace(18),
        const UploadImageWidget(),
        verticalSpace(24),
        const EditProductImages(imagesUrl: [
          'https://s3-alpha-sig.figma.com/img/d1cd/738f/e650cb9e92570e480c431d36245bee46?Expires=1745193600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=K3DOQv3bbrNnUvKSJw9mxlUGP4p0rgeTcwTYjRR-WTr0nZRJcF68nH-yaZq8-jYy8CZYDULDaBUnF77x0xRvuQ0RwtwJv8k9NdbSRfE3vGExDIatsQ-pwG4BJM3Ju4x0b~bAxfI0k3Ip3Y~ebIV80VJVnQrtS8JO~t1iGuxxAMgi5m2mKtQnhQUx2T9AgMK0or8R71cY~bNDGU2u6zEp64zhlrFFJ0EMl2LUzMpW1CWVppMpNtrru~Eot-hzZ22kXnwkSUB0ONO26QE~oiV3fappk7zQM5A81C1HFka7XvfkQUibub~96Vq3trxtcW6PcX0gQJribGxmwS0tlezwww__'
        ]),
      ],
    );
  }
}
