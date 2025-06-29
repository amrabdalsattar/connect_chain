import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/extensions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors_helper.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/models/supplier_quotations_request.dart';
import '../../logic/cubit/rfq_response_cubit.dart';

class RFQDetailsScreen extends StatelessWidget {
  final SupplierRFQ rfq;

  const RFQDetailsScreen({
    super.key,
    required this.rfq,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsHelper.homeScaffoldColor,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(rfq: rfq),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorsHelper.homeScaffoldColor,
                    ColorsHelper.white,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomHeaderSection(rfq: rfq),
                    const VerticalSpace(height: 24),
                    CustomProductInfoSection(rfq: rfq),
                    const VerticalSpace(height: 24),
                    CustomQuantitySection(rfq: rfq),
                    const VerticalSpace(height: 24),
                    CustomDescriptionSection(rfq: rfq),
                    const VerticalSpace(height: 24),
                    CustomTimelineSection(rfq: rfq),
                    const VerticalSpace(height: 24),
                    CustomAttachmentsSection(rfq: rfq),
                    const VerticalSpace(height: 24),
                    CustomBusinessCardSection(rfq: rfq),
                    const VerticalSpace(height: 32),
                    CustomButton(
                      title: 'إنشاء عرض السعر',
                      width: double.infinity,
                      color: ColorsHelper.completedOrderBackGroundColor,
                      textStyle: AppTextStyles.cairoWhiteBold16,
                      radius: 16,
                      elevation: 0,
                      onTap: () {
                        final cubit = context.read<RFQResponseCubit>();

                        context.pushNamed(Routes.rfqResponseScreenRoute,
                            arguments: {'rfq': rfq, 'cubit': cubit});
                      },
                    ),
                    const HorizontalSpace(width: 24),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliverAppBar extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomSliverAppBar({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(rfq.status);
    return SliverAppBar(
      expandedHeight: 120,
      floating: false,
      pinned: true,
      elevation: 0,
      backgroundColor: ColorsHelper.white,
      foregroundColor: ColorsHelper.darkBlue,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorsHelper.white,
                ColorsHelper.homeScaffoldColor,
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 20, 20, 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const VerticalSpace(height: 10),
                        Text(
                          'طلب عرض سعر #${rfq.id}',
                          style: AppTextStyles.cairoBlackBold20,
                        ),
                        const VerticalSpace(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: statusColor.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            rfq.status,
                            style: AppTextStyles.cairoBlackRegular16.copyWith(
                              color: statusColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return ColorsHelper.liteBlue;
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
}

class CustomHeaderSection extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomHeaderSection({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: ColorsHelper.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: ColorsHelper.boxShadow.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorsHelper.pinnedOrderBackGroundColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color:
                      ColorsHelper.pinnedOrderBackGroundColor.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Icon(
              Icons.description,
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'طلب عرض سعر',
                  style: AppTextStyles.cairoBlackRegular16.copyWith(
                    color: ColorsHelper.subText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const VerticalSpace(height: 4),
                Text(
                  'ID: ${rfq.id}',
                  style: AppTextStyles.cairoBlackBold20.copyWith(fontSize: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomProductInfoSection extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomProductInfoSection({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      title: 'معلومات المنتج',
      icon: Icons.inventory_2_outlined,
      iconColor: ColorsHelper.purple,
      child: Column(
        children: [
          _buildDetailRow(
            'اسم المنتج',
            rfq.productName,
            Icons.shopping_bag_outlined,
            ColorsHelper.pinnedOrderBackGroundColor,
          ),
          const VerticalSpace(height: 16),
          _buildDetailRow(
            'الفئة',
            rfq.categoryName,
            Icons.category_outlined,
            ColorsHelper.purple,
          ),
          const VerticalSpace(height: 16),
          _buildDetailRow(
            'معرف الفئة',
            rfq.categoryId.toString(),
            Icons.tag_outlined,
            ColorsHelper.subText,
          ),
        ],
      ),
    );
  }
}

class CustomQuantitySection extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomQuantitySection({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      title: 'الكمية والمواصفات',
      icon: Icons.straighten_outlined,
      iconColor: ColorsHelper.completedOrderBackGroundColor,
      child: Row(
        children: [
          Expanded(
            child: _buildQuantityCard(
              'الكمية',
              rfq.quantity.toString(),
              Icons.inventory_outlined,
              ColorsHelper.completedOrderBackGroundColor,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _buildQuantityCard(
              'الوحدة',
              rfq.unit,
              Icons.straighten_outlined,
              ColorsHelper.pinnedOrderBackGroundColor,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDescriptionSection extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomDescriptionSection({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      title: 'الوصف',
      icon: Icons.description_outlined,
      iconColor: ColorsHelper.liteBlue,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorsHelper.liteBlue.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: ColorsHelper.liteBlue.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Text(
          rfq.description.isNotEmpty ? rfq.description : 'لا يوجد وصف',
          style: AppTextStyles.cairoBlackRegular16.copyWith(
            color: rfq.description.isNotEmpty
                ? ColorsHelper.darkBlue
                : ColorsHelper.subText,
            fontSize: 14,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

class CustomTimelineSection extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomTimelineSection({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      title: 'الجدول الزمني',
      icon: Icons.schedule_outlined,
      iconColor: ColorsHelper.rejectedOrderBackGroundColor,
      child: _buildDetailRow(
        'تاريخ الإنتهاء',
        rfq.deadline != null
            ? rfq.deadline!.split('T').first
            : 'لا يوجد تاريخ محدد',
        Icons.event_outlined,
        ColorsHelper.rejectedOrderBackGroundColor,
      ),
    );
  }
}

class CustomAttachmentsSection extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomAttachmentsSection({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      title: 'المرفقات',
      icon: Icons.attach_file_outlined,
      iconColor: ColorsHelper.bagIconBackGroundColor,
      child: rfq.attachments.isNotEmpty
          ? Column(
              children: rfq.attachments.asMap().entries.map((entry) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: entry.key < rfq.attachments.length - 1 ? 12 : 0),
                  child: _buildAttachmentItem(entry.value),
                );
              }).toList(),
            )
          : Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: ColorsHelper.bagIconBackGroundColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: ColorsHelper.bagIconBackGroundColor.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Text(
                'لا توجد مرفقات',
                style: AppTextStyles.cairoBlackRegular16.copyWith(
                  color: ColorsHelper.subText,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}

class CustomBusinessCardSection extends StatelessWidget {
  final SupplierRFQ rfq;
  const CustomBusinessCardSection({super.key, required this.rfq});
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      title: 'معلومات العمل',
      icon: Icons.business_center_outlined,
      iconColor: ColorsHelper.purple,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: rfq.shareBusinessCard
              ? ColorsHelper.completedOrderBackGroundColor.withOpacity(0.05)
              : ColorsHelper.rejectedOrderBackGroundColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: rfq.shareBusinessCard
                ? ColorsHelper.completedOrderBackGroundColor.withOpacity(0.2)
                : ColorsHelper.rejectedOrderBackGroundColor.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: rfq.shareBusinessCard
                    ? ColorsHelper.completedOrderBackGroundColor
                        .withOpacity(0.1)
                    : ColorsHelper.rejectedOrderBackGroundColor
                        .withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                rfq.shareBusinessCard
                    ? Icons.check_circle_outline
                    : Icons.cancel_outlined,
                color: rfq.shareBusinessCard
                    ? ColorsHelper.completedOrderBackGroundColor
                    : ColorsHelper.rejectedOrderBackGroundColor,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                rfq.shareBusinessCard
                    ? 'مشاركة بطاقة العمل مفعلة'
                    : 'مشاركة بطاقة العمل غير مفعلة',
                style: AppTextStyles.cairoBlackRegular16.copyWith(
                  color: rfq.shareBusinessCard
                      ? ColorsHelper.completedOrderBackGroundColor
                      : ColorsHelper.rejectedOrderBackGroundColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Helper widgets for section and detail rows

Widget _buildSection({
  required String title,
  required IconData icon,
  required Color iconColor,
  required Widget child,
}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: ColorsHelper.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: ColorsHelper.boxShadow.withOpacity(0.04),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: AppTextStyles.cairoBlackBold20.copyWith(fontSize: 18),
              ),
            ],
          ),
          const VerticalSpace(height: 20),
          child,
        ],
      ),
    ),
  );
}

Widget _buildDetailRow(String label, String value, IconData icon, Color color) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          icon,
          size: 14,
          color: color,
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: RichText(
          text: TextSpan(
            style: AppTextStyles.cairoBlackRegular16.copyWith(
              color: ColorsHelper.subText,
              fontSize: 14,
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
                  fontWeight: FontWeight.w600,
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

Widget _buildQuantityCard(
    String label, String value, IconData icon, Color color) {
  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: color.withOpacity(0.05),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: color.withOpacity(0.2),
        width: 1,
      ),
    ),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const VerticalSpace(height: 12),
        Text(
          label,
          style: AppTextStyles.cairoBlackRegular16.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        const VerticalSpace(height: 4),
        Text(
          value,
          style: AppTextStyles.cairoBlackBold20.copyWith(fontSize: 18),
        ),
      ],
    ),
  );
}

Widget _buildAttachmentItem(dynamic attachment) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: ColorsHelper.bagIconBackGroundColor.withOpacity(0.05),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: ColorsHelper.bagIconBackGroundColor.withOpacity(0.2),
        width: 1,
      ),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorsHelper.bagIconBackGroundColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.description,
            color: ColorsHelper.bagIconBackGroundColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            attachment.toString(),
            style: AppTextStyles.cairoBlackRegular16.copyWith(
              color: ColorsHelper.darkBlue,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            // Handle attachment download/view
          },
          icon: const Icon(
            Icons.download_outlined,
            color: ColorsHelper.bagIconBackGroundColor,
            size: 20,
          ),
        ),
      ],
    ),
  );
}
