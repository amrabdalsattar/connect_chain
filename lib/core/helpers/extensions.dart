import 'package:connect_chain/core/helpers/app_images.dart';
import 'package:connect_chain/core/theming/colors_helper.dart';
import 'package:connect_chain/features/orders/ui/orders_tab.dart';
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
  String get label {
    switch (this) {
      case OrderStatus.pending:
        return 'قيد التنفيذ';
      case OrderStatus.completed:
        return 'مكتملة';
      case OrderStatus.rejected:
        return 'مرفوضة';
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
    }
  }
}

extension OrderStatusMapper on String {
  OrderStatus toOrderStatus() {
    switch (toLowerCase()) {
      case 'accepted':
      case 'قيد التنفيذ':
        return OrderStatus.pending;
      case 'completed':
      case 'مكتملة':
        return OrderStatus.completed;
      case 'rejected':
      case 'مرفوضة':
        return OrderStatus.rejected;
      default:
        throw Exception('Unknown order status: $this');
    }
  }
}
