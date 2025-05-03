part of '../profile_screen.dart';

class ProfileBlocBuilder extends StatelessWidget {
  const ProfileBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<SupplierProfileCubit, SupplierProfileState>(
        buildWhen: (previous, current) =>
            current is SupplierProfileErrorState ||
            current is SupplierProfileLoadingState ||
            current is SupplierProfileSuccessState,
        builder: (context, state) {
          switch (state) {
            case SupplierProfileLoadingState():
              return const CustomLoadingIndicator();
            case SupplierProfileErrorState():
              return ImagedError(
                  errorMessage: state.apiErrorModel.getErrorMessages()!);
            case SupplierProfileSuccessState():
              return const ProfileBody();
            default:
              return const CustomErrorWidget(
                  errorMessage: ConstantString.unknownError);
          }
        },
      ),
    );
  }
}
