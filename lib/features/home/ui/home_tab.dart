import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/home/ui/widgets/home_tab_app_bar.dart';
import 'package:connect_chain/features/home/ui/widgets/monthly_statistics_section/monthly_statistics_section.dart';
import 'package:connect_chain/features/home/ui/widgets/most_selling_section/most_selling_section.dart';
import 'package:connect_chain/features/home/ui/widgets/orders_section/orders_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsHelper.homeScaffoldColor,
      appBar: const HomeTabAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: MonthlyStatisticsSection(),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(24),
            ),
            const SliverToBoxAdapter(
              child: MostSellingSection(),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(24),
            ),
            const SliverToBoxAdapter(
              child: OrdersSection(),
            ),
          ],
        ),
      ),
    );
  }
}
