import '../theming/colors_helper.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final Color? color;
  const LoadingIndicator({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? ColorsHelper.primaryColor,
      ),
    );
  }
}
