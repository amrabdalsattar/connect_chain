import 'package:connect_chain/core/helpers/extensions.dart';

// Order Status Enum
enum OrderStatus {
  pending, // قيد التنفيذ
  accepted, // مقبولة
  rejected, // مرفوضة
  completed, // مكتملة
  canceled, // ملغية
}

class OrderModel {
  final int id;
  final String? orderNumber;
  final String customerName;
  final String orderDate;
  final OrderStatus orderStatus;
  final double totalAmount;
  final List<String> products;

  OrderModel({
    required this.id,
    this.orderNumber,
    required this.customerName,
    required this.orderDate,
    required this.orderStatus,
    required this.totalAmount,
    required this.products,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      orderNumber: json['orderNumber'],
      customerName: json['customerName'],
      orderDate: json['orderDate'],
      orderStatus: (json['orderStatus'] as String).toOrderStatus(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      products: List<String>.from(json['products']),
    );
  }
}

class OrdersResponseModel {
  final List<OrderModel> data;

  OrdersResponseModel({required this.data});

  factory OrdersResponseModel.fromJson(Map<String, dynamic> json) {
    return OrdersResponseModel(
      data: (json['data'] as List)
          .map((orderJson) => OrderModel.fromJson(orderJson))
          .toList(),
    );
  }
}
