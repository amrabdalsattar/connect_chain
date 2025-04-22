import 'app_images.dart';
import '../theming/colors_helper.dart';
import '../../features/orders/data/models/order_response_model.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate);
  }

  void pop() => Navigator.of(this).pop();

  void pushReplacementWithSlide(Widget widget) =>
      Navigator.of(this).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1.0, 0.0), // Slide from right to left
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      );
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == '';
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this == [];
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() => this == null || this == {};
}

extension OrderStatusX on OrderStatus {
  int get index {
    switch (this) {
      case OrderStatus.pending:
        return 0;
      case OrderStatus.accepted:
        return 1;
      case OrderStatus.rejected:
        return 2;
      case OrderStatus.completed:
        return 3;
      case OrderStatus.canceled:
        return 0;
    }
  }

  String get label {
    switch (this) {
      case OrderStatus.pending:
        return 'قيد التنفيذ';
      case OrderStatus.completed:
        return 'مكتملة';
      case OrderStatus.rejected:
        return 'مرفوضة';
      case OrderStatus.accepted:
        return 'مقبولة';
      case OrderStatus.canceled:
        return 'ملغية';
    }
  }

  Color get color {
    switch (this) {
      case OrderStatus.pending:
        return ColorsHelper.gray;
      case OrderStatus.completed:
        return ColorsHelper.completedOrderBackGroundColor;
      case OrderStatus.rejected:
        return ColorsHelper.rejectedOrderBackGroundColor;
      case OrderStatus.accepted:
        return ColorsHelper.completedOrderBackGroundColor;

      case OrderStatus.canceled:
        return ColorsHelper.rejectedOrderBackGroundColor;
    }
  }

  String get icon {
    switch (this) {
      case OrderStatus.pending:
        return AppImages.pendingOrderIcon;
      case OrderStatus.completed:
        return AppImages.completedOrderIcon;
      case OrderStatus.rejected:
        return AppImages.rejectedOrderIcon;
      case OrderStatus.accepted:
        // needs to change
        return AppImages.completedOrderIcon;

      case OrderStatus.canceled:
        // needs to change
        return AppImages.rejectedOrderIcon;
    }
  }
}

extension OrderStatusMapper on String {
  OrderStatus toOrderStatus() {
    switch (toLowerCase()) {
      case 'pending':
      case 'قيد التنفيذ':
        return OrderStatus.pending;
      case 'completed':
      case 'مكتملة':
        return OrderStatus.completed;
      case 'rejected':
      case 'مرفوضة':
        return OrderStatus.rejected;
      case 'accepted':
      case 'مقبولة':
        return OrderStatus.accepted;
      case 'canceled':
      case 'ملغية':
        return OrderStatus.canceled;
      default:
        throw Exception('Unknown order status: $this');
    }
  }
}
