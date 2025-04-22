import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/widgets/imaged_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main/logic/cubit/main_cubit.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) =>
          context.read<MainCubit>().toggleCurrentTabIndex = 0,
      child: const Scaffold(
        body: ImagedError(
          errorMessage: "ليس لديك أي إشعارات حالياً",
          imagePath: AppImages.notificationErrorImage,
        ),
      ),
    );
  }
}
