import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../manage_products/data/models/manage_supplier_products_request_model.dart';
import '../../data/models/rfq_line_item_model.dart';
import '../../data/models/supplier_quotations_request.dart';
import '../../logic/cubit/rfq_response_cubit.dart';
import '../widgets/pricing_step.dart';
import '../widgets/prodcut_selection_dialog.dart';
import '../widgets/terms_step.dart';
import '../widgets/review_step.dart';
import '../widgets/rfq_response_stepper.dart';
import '../widgets/rfq_response_success.dart';

// parts
part '../widgets/rfq_response_bloc_consumer.dart';
part '../widgets/rfq_line_item_list.dart';
part '../widgets/rfq_line_item.dart';
part '../widgets/add_line_item_button.dart';
part '../widgets/pricing_step_navigation_buttons.dart';
part '../widgets/rfq_payment_terms_dropdownMenu.dart';
part '../widgets/rfq_review_step_custom_section.dart';
part '../widgets/rfq_review_step_detail_row.dart';
part '../widgets/rfq_review_step_vendro_details_section.dart';
part '../widgets/rfq_review_step_terms_section.dart';
part '../widgets/rfq_review_step_pricing_section.dart';

class RFQResponseScreen extends StatelessWidget {
  final SupplierRFQ rfq;

  const RFQResponseScreen({super.key, required this.rfq});

  @override
  Widget build(BuildContext context) {
    context.read<RFQResponseCubit>().setCurrentRfq(rfq);
    return const RFQResponseScreenBlocConsumer();
  }
}
