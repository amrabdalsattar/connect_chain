part of '../profile_screen.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(colors: [
          ColorsHelper.primaryColor,
          ColorsHelper.profileHeaderGradientEnd,
        ], stops: [
          0.15,
          2
        ]),
      ),
      height: 85.h,
      width: 342.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HorizontalSpace(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' اهلاً بك ',
                style: AppTextStyles.cairoWhiteBold12,
              ),
              const VerticalSpace(height: 3),
              Text(
                SharedPreferencesHelper.getString(
                    SharedPreferencesKeys.userName),
                style: AppTextStyles.cairoWhiteBold16,
              ),
            ],
          ),
          const Spacer(),
          // App Logo
          Container(
            margin: const EdgeInsetsDirectional.only(end: 16, top: 13),
            width: 24.w,
            height: 24.h,
            child: Image.asset(AppImages.connectChainWhiteLogo),
          ),
        ],
      ),
    );
  }
}
