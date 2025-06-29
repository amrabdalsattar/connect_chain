import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/models/supplier_quotations_request.dart';
import '../../logic/cubit/rfq_response_cubit.dart';

class ManageRFQsScreen extends StatelessWidget {
  const ManageRFQsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RFQResponseCubit(getIt())..getSupplierRFQs(),
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'عروض الأسعار من العملاء',
          hideBackButton: true,
        ),
        backgroundColor: ColorsHelper.homeScaffoldColor,
        body: BlocBuilder<RFQResponseCubit, RFQResponseState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CustomLoadingIndicator());
            } else if (state.currentSupplierRFQs != null &&
                state.currentSupplierRFQs!.data.isNotEmpty) {
              final rfqs = state.currentSupplierRFQs!;
              return RFQListView(rfqs: rfqs.data);
            } else if (state.errorMessage != null &&
                state.errorMessage!.isNotEmpty) {
              return ErrorStateWidget(message: state.errorMessage!);
            }
            return const EmptyStateWidget();
          },
        ),
      ),
    );
  }
}

class RFQListView extends StatelessWidget {
  final List<dynamic> rfqs;
  const RFQListView({super.key, required this.rfqs});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: rfqs.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final rfq = rfqs[index];
        return RFQCard(rfq: rfq, index: index);
      },
    );
  }
}

class RFQCard extends StatelessWidget {
  final SupplierRFQ rfq;
  final int index;
  const RFQCard({super.key, required this.rfq, required this.index});

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return ColorsHelper.orderChipBackGroundColor;
      case 'approved':
        return ColorsHelper.completedOrderBackGroundColor;
      case 'rejected':
        return ColorsHelper.rejectedOrderBackGroundColor;
      case 'active':
        return ColorsHelper.pinnedOrderBackGroundColor;
      case 'completed':
        return ColorsHelper.purple;
      default:
        return ColorsHelper.secondaryGray;
    }
  }

  String _getArabicStatus(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return 'قيد الانتظار';
      case 'approved':
        return 'مقبول';
      case 'rejected':
        return 'مرفوض';
      case 'active':
        return 'نشط';
      case 'completed':
        return 'مكتمل';
      default:
        return status;
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(rfq.status);

    return InkWell(
      onTap: () {
        context.pushNamed(
          Routes.rfqDetailsScreenRoute,
          arguments: {'rfq': rfq, 'cubit': context.read<RFQResponseCubit>()},
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorsHelper.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: ColorsHelper.boxShadow,
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: ColorsHelper.borderGray),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: ColorsHelper.pinnedOrderBackGroundColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: ColorsHelper.pinnedOrderBackGroundColor
                                  .withOpacity(0.12),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          'طلب عرض سعر #${rfq.id}',
                          style: AppTextStyles.cairoWhiteBold16
                              .copyWith(fontSize: 13),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: statusColor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: statusColor.withOpacity(0.3),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          _getArabicStatus(rfq.status),
                          style: AppTextStyles.cairoBlackBold20.copyWith(
                            color: statusColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Text(
                    rfq.productName,
                    style: AppTextStyles.cairoBlackBold20
                        .copyWith(fontSize: 18, height: 1.2),
                  ),
                  const SizedBox(height: 10),
                  InfoRow(
                    icon: Icons.category_outlined,
                    label: 'الفئة',
                    value: rfq.categoryName,
                    color: ColorsHelper.purple,
                  ),
                  const SizedBox(height: 6),
                  InfoRow(
                    icon: Icons.inventory_2_outlined,
                    label: 'الكمية',
                    value: '${rfq.quantity} ${rfq.unit}',
                    color: ColorsHelper.completedOrderBackGroundColor,
                  ),
                  const SizedBox(height: 6),
                  InfoRow(
                    icon: Icons.schedule_outlined,
                    label: 'تاريخ الإنتهاء',
                    value: rfq.deadline.toString().split('T').first,
                    color: ColorsHelper.liteBlue,
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 44,
                          child: CustomButton(
                            title: 'عرض التفاصيل',
                            width: double.infinity,
                            color: ColorsHelper.pinnedOrderBackGroundColor,
                            textStyle: AppTextStyles.cairoWhiteBold16
                                .copyWith(fontSize: 15),
                            radius: 12,
                            elevation: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color.withOpacity(0.13),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: 16,
            color: color,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: AppTextStyles.cairoBlackRegular16.copyWith(
                fontSize: 14,
                color: ColorsHelper.subText,
              ),
              children: [
                TextSpan(
                  text: '$label: ',
                  style: AppTextStyles.cairoBlackRegular16.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                TextSpan(
                  text: value,
                  style: AppTextStyles.cairoBlackBold20.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorsHelper.darkBlue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: ColorsHelper.pinnedOrderBackGroundColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.description_outlined,
              size: 48,
              color: ColorsHelper.pinnedOrderBackGroundColor,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'لا توجد عروض أسعار',
            style: AppTextStyles.cairoBlackBold20,
          ),
          const SizedBox(height: 8),
          Text(
            'لا توجد عروض أسعار من العملاء في الوقت الحالي.',
            style: AppTextStyles.cairoBlackRegular16.copyWith(
              color: ColorsHelper.subText,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ErrorStateWidget extends StatelessWidget {
  final String message;
  const ErrorStateWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: ColorsHelper.rejectedOrderBackGroundColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.error_outline,
              size: 48,
              color: ColorsHelper.rejectedOrderBackGroundColor,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'حدث خطأ ما',
            style: AppTextStyles.cairoBlackBold20,
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: AppTextStyles.cairoBlackRegular16.copyWith(
              color: ColorsHelper.subText,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
