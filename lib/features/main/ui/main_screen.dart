import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/cubit/main_cubit.dart';
import 'widgets/bottom_navigation_bar/custom_bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MainCubit mainCubit = context.read<MainCubit>();

    return BlocBuilder<MainCubit, dynamic>(
      bloc: mainCubit,
      builder: (_, state) => Scaffold(
        body: mainCubit.mainTabs[mainCubit.currentTabIndex],
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
