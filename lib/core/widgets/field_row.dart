import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/widgets/labeled_field.dart';
import 'package:flutter/material.dart';

class LabeledFieldRow extends StatelessWidget {
  final LabeledField left;
  final LabeledField right;

  const LabeledFieldRow({required this.left, required this.right, super.key});

  @override
  Widget build(BuildContext context) {  
    return Row(
      children: [
        Expanded(child: left),
        horizontalSpace(16),
        Expanded(child: right),
      ],
    );
  }
}
