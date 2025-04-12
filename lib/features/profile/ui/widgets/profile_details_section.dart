part of '../profile_screen.dart';

class ProfileDetailsSection extends StatelessWidget {
  final ProfileSectionModel profileSectionModel;

  const ProfileDetailsSection({super.key, required this.profileSectionModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          profileSectionModel.title,
          style: AppTextStyles.cairoBlackBold20,
        ),
        verticalSpace(12),
        ...profileSectionModel.profileItemModel.map(
          (item) => ProfileDetailsItem(itemModel: item),
        )
      ],
    );
  }
}
