import 'package:flutter/material.dart';

class ProfileItemModel {
  final String title;
  final String subtitle;
  final VoidCallback? onEditTap;
  final bool? isEditAvailable;

  ProfileItemModel({
    required this.title,
    required this.subtitle,
    this.onEditTap,
    this.isEditAvailable = true,
  });
}
