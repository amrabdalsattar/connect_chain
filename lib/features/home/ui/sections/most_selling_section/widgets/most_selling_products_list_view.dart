import 'package:connect_chain/features/home/data/models/response_models/top_sold_products_response_model.dart';
import 'package:connect_chain/features/home/ui/sections/most_selling_section/widgets/most_selling_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MostSellingProductsListView extends StatelessWidget {
  final List<TopSoldProductDataModel> topSoldProducts;
  const MostSellingProductsListView({super.key, required this.topSoldProducts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: topSoldProducts.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => MostSellingProductWidget(
          productDataModel: topSoldProducts[index],
        ),
      ),
    );
  }
}
