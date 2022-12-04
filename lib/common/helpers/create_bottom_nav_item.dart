import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/ui/favoured/favoured_view.dart';
import 'package:food_delivery_app_301/ui/home/home_view.dart';
import 'package:food_delivery_app_301/ui/orders/orders_view.dart';
import 'package:food_delivery_app_301/ui/search/search_view.dart';

BottomNavigationBarItem createNavItem(TabItem tabItem) {
  final currentTab = TabItemData.tabs[tabItem]!;
  return BottomNavigationBarItem(icon: currentTab.icon, label: currentTab.title);
}

enum TabItem { Home, Search, Orders, Favorite }

class TabItemData {
  String title;
  Widget icon;
  TabItemData({
    required this.title,
    required this.icon,
  });
  static Map<TabItem, TabItemData> tabs = {
    TabItem.Home: TabItemData(icon: Icon(Icons.home), title: "Home"),
    TabItem.Search: TabItemData(icon: Icon(Icons.search), title: "Search"),
    TabItem.Orders: TabItemData(icon: Icon(Icons.add_box), title: "Orders"),
    TabItem.Favorite: TabItemData(icon: Icon(Icons.favorite), title: "Profile"),
  };
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return HomeView();
    case 1:
      return SearchView();
    case 2:
      return OrdersView();
    case 3:
      return FavouredView();
    default:
      return HomeView();
  }
}
