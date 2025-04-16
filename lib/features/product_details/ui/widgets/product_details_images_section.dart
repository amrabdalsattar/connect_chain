part of '../product_details_screen.dart';

class ProductDetailsImagesSection extends StatelessWidget {
  const ProductDetailsImagesSection({
    super.key,
    required this.productDataModel,
  });

  final ProductDataModel productDataModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        children: [
          verticalSpace(12),
          // Skullable section
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'SKU : ${productDataModel.id}',
              style: AppTextStyles.cairoBlackBold13,
            ),
          ),
          // Product Image
          verticalSpace(8),
          Image.network(
            productDataModel.image ??
                'https://s3-alpha-sig.figma.com/img/f3cb/0727/9cc4f3b5f5790ffbcd9105db73a0b71a?Expires=1745798400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ndI0YSmbj1rPzzQVJ-qkar6sN5I0GM9Y7~NiCPqoDT2rzGY6YCzNLLovqsmkBZta75mSh6MaEIt3gqRXFWCgV24BYbYzNX-jElII8ZNM3PmVNhbyuBkhaSNNOCOsHRpSzKTPu6nWql7lveeVUdwcDzpeTsezia7xjZEVPYXy9TlDkuK9MJV52MY0zRE6sNTIy-dhMm7WPZeTIW9vlYM5Eq6yz-MaxjNfywZM01RwGvQ-~VnKQVFa2zzEqGbxCtRZGzzQHWLfR9WT9idBi3FEEs2kQzp5~fkzE1sDm75KDlkS-VcbIbSFnvisxKpUO2IyyiABe94QIwhE3w9YKK617A__',
            width: 343.w,
            height: 230.h,
            fit: BoxFit.cover,
          ),
          verticalSpace(16),
          // Image Carousal section
          const CustomImageSlider(imageFiles: []),
          verticalSpace(25.5)
        ],
      ),
    );
  }
}
