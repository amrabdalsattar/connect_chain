import 'package:connect_chain/features/main/logic/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    MainCubit mainCubit = context.read<MainCubit>();

    return BlocBuilder<MainCubit, dynamic>(
      bloc: mainCubit,
      builder: (_, state) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: mainCubit.bottomNavigationBarItems,
        currentIndex: mainCubit.currentTabIndex,
        onTap: (index) {
          mainCubit.toggleCurrentTabIndex = index;
        },
      ),
    );
  }
}
