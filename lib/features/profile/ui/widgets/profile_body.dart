import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/supplier_profile_cubit.dart';
import 'profile_section_title.dart';
import 'user_data_text_field.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final SupplierProfileCubit profileCubit =
        context.read<SupplierProfileCubit>();
    return Form(
      key: profileCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileSectionTitle(title: 'معلومات الحساب'),
          UserDataTextField(
            labelText: 'الإسم بالكامل',
            controller: profileCubit.name,
          ),
          UserDataTextField(
            labelText: 'البريد الاليكتروني',
            enabled: false,
            controller: profileCubit.email,
          ),
          UserDataTextField(
            labelText: 'رقم الهاتف',
            controller: profileCubit.phoneNumber,
          ),
          UserDataTextField(
            labelText: 'العنوان',
            controller: profileCubit.address,
          ),
          const VerticalSpace(height: 24),
          const ProfileSectionTitle(title: 'معلومات الشركة'),
          UserDataTextField(
            labelText: 'اسم الشركة',
            controller: profileCubit.companyName,
          ),
          UserDataTextField(
            labelText: 'رقم الهاتف',
            controller: profileCubit.companyPhoneNumber,
          ),
          UserDataTextField(
            labelText: 'العنوان',
            controller: profileCubit.companyAddress,
          ),
          const VerticalSpace(height: 100),
        ],
      ),
    );
  }
}
