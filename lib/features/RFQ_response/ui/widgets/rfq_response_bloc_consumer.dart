part of '../screens/rfq_response_screen.dart';

class RFQResponseScreenBlocConsumer extends StatelessWidget {
  const RFQResponseScreenBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RFQResponseCubit>();

    return Scaffold(
      backgroundColor: ColorsHelper.homeScaffoldColor,
      appBar: const CustomAppBar(
        title: 'أنشاء عرض سعر',
        hideBackButton: false,
      ),
      body: BlocConsumer<RFQResponseCubit, RFQResponseState>(
        listener: (context, state) {
          if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
            DialogsHelper.showErrorDialog(context, state.errorMessage!);
          } else if (state.isSubmitted) {
            context.pop();
            context.pop();
            DialogsHelper.showSnackBar(context, 'Quotation Sent Successfuly');
            context.read<RFQResponseCubit>().resetSubmissionFlag();
          }
        },
        builder: (context, state) {
          // if (state.isSubmitted) {
          //   return const RFQResponseSuccess();
          // }
          return Column(
            children: [
              RFQResponseStepper(
                currentStep: cubit.currentStep,
                onStepTapped: cubit.goToStep,
              ),
              Expanded(
                child: _buildCurrentStep(cubit),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCurrentStep(RFQResponseCubit cubit) {
    switch (cubit.currentStep) {
      case 0:
        return const PricingStep();
      case 1:
        return const TermsStep();
      case 2:
        // Fetch Supplier Details
        return const ReviewStep();
      default:
        return const PricingStep();
    }
  }
}
