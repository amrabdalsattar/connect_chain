import 'package:flutter/material.dart';

import '../../../../core/theming/colors_helper.dart';

class SupplierRFQsRequest {
  final List<SupplierRFQ> data;
  final bool isSuccess;
  final int errorCode;
  final String message;

  SupplierRFQsRequest({
    required this.data,
    required this.isSuccess,
    required this.errorCode,
    required this.message,
  });

  factory SupplierRFQsRequest.fromJson(Map<String, dynamic> json) {
    return SupplierRFQsRequest(
      data: (json['data'] as List<dynamic>)
          .map((e) => SupplierRFQ.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSuccess: json['isSuccess'] as bool,
      errorCode: json['errorCode'] as int,
      message: json['message'] as String,
    );
  }
}

class SupplierRFQ {
  final int id;
  final String productName;
  final int categoryId;
  final String categoryName;
  final String description;
  final int quantity;
  final String unit;
  final String? deadline;
  final bool shareBusinessCard;
  final String status;
  final List<dynamic> attachments;

  SupplierRFQ({
    required this.id,
    required this.productName,
    required this.categoryId,
    required this.categoryName,
    required this.description,
    required this.quantity,
    required this.unit,
    required this.deadline,
    required this.shareBusinessCard,
    required this.status,
    required this.attachments,
  });

  factory SupplierRFQ.fromJson(Map<String, dynamic> json) {
    return SupplierRFQ(
      id: json['id'] as int,
      productName: json['productName'] as String,
      categoryId: json['categoryId'] as int,
      categoryName: json['categoryName'] as String,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      unit: json['unit'] as String,
      deadline: json['deadline']?.toString(),
      shareBusinessCard: json['shareBusinessCard'] as bool,
      status: json['status'] as String,
      attachments: json['attachments'] as List<dynamic>,
    );
  }

   Color getStatusColor(String status) {
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

  String getArabicStatus(String status) {
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

}
