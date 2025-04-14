import 'package:connect_chain/features/main/logic/cubit/main_cubit.dart';
import 'package:connect_chain/features/main/ui/widgets/bottom_navigation_bar/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MainCubit mainCubit = context.read<MainCubit>();

    return Scaffold(
      body: mainCubit.mainTabs[mainCubit.currentTabIndex],
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
