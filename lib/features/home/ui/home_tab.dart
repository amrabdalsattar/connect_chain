import 'package:connect_chain/core/di/dependency_injection.dart';
import 'package:connect_chain/features/home/data/repos/monthly_stats_repo.dart';
import 'package:connect_chain/features/home/data/repos/orders_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/products_summary_repo.dart';
import 'package:connect_chain/features/home/data/repos/revenue_chart_repo.dart';
import 'package:connect_chain/features/home/logic/monthly_statistics_cubit/monthly_statistics_cubit.dart';
import 'package:connect_chain/features/home/logic/orders_summary_cubit/orders_summary_cubit.dart';
import 'package:connect_chain/features/home/logic/products_summary_cubit/products_summary_cubit.dart';
import 'package:connect_chain/features/home/logic/revenue_chart_cubit/revenue_chart_cubit.dart';
import 'package:connect_chain/features/home/logic/top_sold_products_cubit/top_sold_products_cubit.dart';
import 'package:connect_chain/features/home/ui/sections/monthly_statistics_section/monthly_statistics_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors_helper.dart';
import '../data/repos/top_sold_products_repo.dart';
import 'widgets/home_tab_app_bar.dart';
import 'sections/most_selling_section/most_selling_section.dart';
import 'sections/orders_section/orders_section.dart';
import 'sections/products_summary_section/products_summary_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'sections/revenue_chart/revenue_chart.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late final RevenueChartCubit revenueChartCubit;
  late final MonthlyStatisticsCubit monthlyStatisticsCubit;
  late final ProductsSummaryCubit productsSummaryCubit;
  late final OrdersSummaryCubit ordersSummaryCubit;
  late final TopSoldProductsCubit topSoldProductsCubit;

  @override
  void initState() {
    super.initState();
    // Assigning cubits
    revenueChartCubit = RevenueChartCubit(getIt<RevenueChartRepo>());
    monthlyStatisticsCubit = MonthlyStatisticsCubit(getIt<MonthlyStatsRepo>());
    productsSummaryCubit = ProductsSummaryCubit(getIt<ProductsSummaryRepo>());
    ordersSummaryCubit = OrdersSummaryCubit(getIt<OrdersSummaryRepo>());
    topSoldProductsCubit = TopSoldProductsCubit(getIt<TopSoldProductsRepo>());

    // Fetching data
    monthlyStatisticsCubit.getMonthlyStats();
    revenueChartCubit.getRevenueChartData();
    productsSummaryCubit.getProductsSummary();
    ordersSummaryCubit.getOrdersSummary();
    topSoldProductsCubit.getTopSoldProducts();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RevenueChartCubit>(create: (_) => revenueChartCubit),
        BlocProvider<MonthlyStatisticsCubit>(
            create: (_) => monthlyStatisticsCubit),
        BlocProvider<ProductsSummaryCubit>(create: (_) => productsSummaryCubit),
        BlocProvider<OrdersSummaryCubit>(create: (_) => ordersSummaryCubit),
        BlocProvider<TopSoldProductsCubit>(create: (_) => topSoldProductsCubit),
      ],
      child: Scaffold(
        backgroundColor: ColorsHelper.homeScaffoldColor,
        appBar: const HomeTabAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(16.r),
                  margin: EdgeInsets.only(top: 25.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: ColorsHelper.white,
                  ),
                  child: Column(
                    children: [
                      const MonthlyStatisticsSection(),
                      verticalSpace(24),
                      const RevenueChart(),
                    ],
                  ),
                ),
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
              SliverToBoxAdapter(
                child: verticalSpace(24),
              ),
              const SliverToBoxAdapter(
                child: ProductsSummarySection(),
              ),
              SliverToBoxAdapter(
                child: verticalSpace(24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
