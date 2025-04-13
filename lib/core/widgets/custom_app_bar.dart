import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/widgets/custom_back_button.dart';
import 'package:connect_chain/core/widgets/logo.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, this.hideBackButton = false, required this.title});

  final bool hideBackButton;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Row(
          children: [
            const Logo(width: 41, height: 52),
            horizontalSpace(8),
            Text(
              title,
              style: AppTextStyles.cairoBlackBold24,
            ),
            const Spacer(),
            if (!hideBackButton) const CustomBackButton(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
