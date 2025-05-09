part of '../profile_screen.dart';

class SliverProfileHeader extends StatelessWidget {
  const SliverProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: ColorsHelper.white,
      automaticallyImplyLeading: false,
      expandedHeight: 180.h,
      floating: true,
      surfaceTintColor: ColorsHelper.white,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(isToLeftArrow: false),
              VerticalSpace(height: 16),
              ProfileHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
