import 'package:connect_chain/core/di/dependency_injection.dart';
import 'package:connect_chain/features/home/domain/dashboard_use_case.dart';
import 'package:connect_chain/features/home/logic/monthly_statistics_cubit/monthly_statistics_cubit.dart';
import 'package:connect_chain/features/home/logic/revenue_chart_cubit/revenue_chart_cubit.dart';
import 'package:connect_chain/features/home/ui/widgets/monthly_statistics_section/monthly_statistics_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors_helper.dart';
import 'widgets/home_tab_app_bar.dart';
import 'widgets/most_selling_section/most_selling_section.dart';
import 'widgets/orders_section/orders_section.dart';
import 'widgets/products_summary_section/products_summary_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/revenue_chart/revenue_chart.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late final RevenueChartCubit revenueChartCubit;
  late final MonthlyStatisticsCubit monthlyStatisticsCubit;

  @override
  void initState() {
    super.initState();
    // Assigning cubits
    revenueChartCubit = RevenueChartCubit(getIt<DashboardUseCase>());
    monthlyStatisticsCubit = MonthlyStatisticsCubit(getIt<DashboardUseCase>());

    // Fetching data
    monthlyStatisticsCubit.getMonthlyStats();
    revenueChartCubit.getRevenueChartData();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RevenueChartCubit>(create: (_) => revenueChartCubit),
        BlocProvider<MonthlyStatisticsCubit>(
            create: (_) => monthlyStatisticsCubit),
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
