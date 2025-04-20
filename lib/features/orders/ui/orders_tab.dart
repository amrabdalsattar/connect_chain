import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main/logic/cubit/main_cubit.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) =>
          context.read<MainCubit>().toggleCurrentTabIndex = 0,
      child: const Scaffold(
        body: Center(
          child: Text('My orders Tab'),
        ),
      ),
    );
  }
}
