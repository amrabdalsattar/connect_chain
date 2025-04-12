import 'package:connect_chain/core/helpers/spacing.dart';
import 'package:connect_chain/core/theming/app_text_styles.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/core/widgets/custom_back_button.dart';
import 'package:connect_chain/features/profile/data/models/profile_item_model.dart';
import 'package:connect_chain/features/profile/data/models/profile_section_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/profile_header.dart';

part 'widgets/profile_details_section.dart';
part 'widgets/profile_details_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                verticalSpace(5),
                const Center(child: ProfileHeader()),
                verticalSpace(32),
                ProfileDetailsSection(
                  profileSectionModel: ProfileSectionModel(
                      title: 'معلومات الحساب ',
                      profileItemModel: List.generate(
                        3,
                        (index) => ProfileItemModel(
                            title: 'الاسم بالكامل', subtitle: 'Mohamed Alaa'),
                      )),
                ),
                verticalSpace(32),
                // Second Section
                ProfileDetailsSection(
                  profileSectionModel: ProfileSectionModel(
                      title: 'معلومات الشركة ',
                      profileItemModel: List.generate(
                        4,
                        (index) => ProfileItemModel(
                            title: 'الاسم بالكامل',
                            subtitle: 'Connect chain Company'),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
