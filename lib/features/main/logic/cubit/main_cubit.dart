import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/cache/user_data_operator.dart';
import '../../../RFQ_response/ui/screens/manage_rfqs_screen.dart';
import '../../../home/ui/home_tab.dart';
import '../../../manage_products/ui/manage_products_screen.dart';
import '../../../orders/ui/orders_tab.dart';
import '../../../settings/ui/settings_tab.dart';
import '../../ui/widgets/bottom_nav_bar_item_switcher.dart';

class MainCubit extends Cubit<dynamic> {
  MainCubit() : super(0);

  int currentTabIndex = 0;

  set toggleCurrentTabIndex(int index) {
    currentTabIndex = index;
    emit(index);
  }

  List<Widget> mainTabs = [
    const HomeTab(),
    const ManageRFQsScreen(),
    const ManageProductsScreen(),
    const OrdersTab(),
    const SettingsTab(),
  ];

  List<BottomNavigationBarItem> get bottomNavigationBarItems => [
        buildBottomNavItem(
          assetPath: AppImages.homeIcon,
          label: 'الرئيسية',
          isSelected: currentTabIndex == 0,
        ),
        buildBottomNavItem(
          assetPath: AppImages.rfqIcon,
          label: 'عروض الأسعار',
          isSelected: currentTabIndex == 1,
        ),
        buildBottomNavItem(
          assetPath: AppImages.myProductsIcon,
          label: 'منتجاتي',
          isSelected: currentTabIndex == 2,
        ),
        buildBottomNavItem(
          assetPath: AppImages.ordersIcon,
          label: 'الطلبات',
          isSelected: currentTabIndex == 3,
        ),
        buildBottomNavItem(
          assetPath: AppImages.settingsIcon,
          label: 'الإعدادات',
          isSelected: currentTabIndex == 4,
        ),
      ];

  buildBottomNavItem({
    required String assetPath,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: BottomNavBarItemSwitcher(
        assetPath: assetPath,
        isSelected: isSelected,
        label: label,
      ),
      label: label,
    );
  }

  Map<String, dynamic> userData = UserDataOperator.getUserData();
}
