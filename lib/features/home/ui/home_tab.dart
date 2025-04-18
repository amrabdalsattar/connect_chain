import 'package:connect_chain/core/di/dependency_injection.dart';
import 'package:connect_chain/features/home/domain/dashboard_use_case.dart';
import 'package:connect_chain/features/home/logic/cubit/dashboard_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors_helper.dart';
import 'widgets/home_tab_app_bar.dart';
import 'widgets/monthly_statistics_section/monthly_statistics_section.dart';
import 'widgets/most_selling_section/most_selling_section.dart';
import 'widgets/orders_section/orders_section.dart';
import 'widgets/products_summary_section/products_summary_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late final DashboardCubit dashboardCubit;

  @override
  void initState() {
    dashboardCubit = DashboardCubit(getIt<DashboardUseCase>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dashboardCubit,
      child: Scaffold(
        backgroundColor: ColorsHelper.homeScaffoldColor,
        appBar: const HomeTabAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
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
