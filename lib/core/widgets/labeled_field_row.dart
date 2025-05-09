import 'package:flutter/material.dart';

import '../helpers/spacing.dart';
import 'labeled_field.dart';

class LabeledFieldRow extends StatelessWidget {
  final LabeledField left;
  final LabeledField right;

  const LabeledFieldRow({required this.left, required this.right, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: left),
        const HorizontalSpace(width: 16),
        Expanded(child: right),
      ],
    );
  }
}
