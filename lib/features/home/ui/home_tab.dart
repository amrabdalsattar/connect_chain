import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/home/ui/widgets/home_tab_app_bar.dart';
import 'package:connect_chain/features/home/ui/widgets/monthly_statistics_section/monthly_statistics_section.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsHelper.homeScaffoldColor,
      appBar: HomeTabAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: MonthlyStatisticsSection(),
          ),
        ],
      ),
    );
  }
}
