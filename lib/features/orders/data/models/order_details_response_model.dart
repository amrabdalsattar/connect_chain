import '../../../../core/helpers/extensions.dart';
import 'order_response_model.dart';

class OrderDetailsResponseModel {
  final int orderNumber;
  final String orderDate;
  final double subTotal;
  final double totalAmount;
  final double discount;
  final double deliveryFees;
  final OrderStatus orderStatus;
  final List<OrderProductModel> pordcuts;
  final String customerName;
  final String customerAddress;
  final String paymentMethod;

  OrderDetailsResponseModel(
      {required this.orderNumber,
      required this.discount,
      required this.orderDate,
      required this.subTotal,
      required this.totalAmount,
      required this.deliveryFees,
      required this.orderStatus,
      required this.pordcuts,
      required this.customerName,
      required this.customerAddress,
      required this.paymentMethod});

  factory OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      OrderDetailsResponseModel(
        orderNumber: json['orderNumber'],
        orderDate: json['orderDate'],
        subTotal: (json['subTotal'] as num).toDouble(),
        totalAmount: (json['totalAmount'] as num).toDouble(),
        deliveryFees: (json['deliveryFees'] as num).toDouble(),
        discount: (json['discount'] as num).toDouble(),
        orderStatus: (json['status'] as String).toOrderStatus(),
        pordcuts: (json['products'] as List)
            .map((product) => OrderProductModel.fromJson(product))
            .toList(),
        customerName: json['customerName'],
        customerAddress: json['customerAddress'],
        paymentMethod: json['paymentMethod'],
      );
}

class OrderProductModel {
  final String productName;
  final int quantity;
  final double unitPrice;
  final List<String>? imageUrls;

  OrderProductModel(
      {required this.productName,
      required this.quantity,
      required this.unitPrice,
      required this.imageUrls});

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      OrderProductModel(
        productName: json['productName'],
        quantity: json['quantity'],
        unitPrice: json['unitPrice'],
        imageUrls: List<String>.from(json['imageUrl']),
      );
}
