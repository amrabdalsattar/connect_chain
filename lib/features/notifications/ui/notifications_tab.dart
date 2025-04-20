import 'package:connect_chain/features/main/logic/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) =>
          context.read<MainCubit>().toggleCurrentTabIndex = 0,
      child: const Scaffold(
        body: Center(
          child: Text('Notifications Tab'),
        ),
      ),
    );
  }
}
