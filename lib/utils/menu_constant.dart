import 'package:flutter/material.dart';
import 'package:untitled/model/menu_item.dart';

class MenuItems {
  static const overView =
      MenuModel(title: 'Tổng quan', icons: Icons.pie_chart_outline_sharp);
  static const watchList = MenuModel(title: 'WatchList', icons: Icons.settings);
  static const settings = MenuModel(title: 'Settings', icons: Icons.settings);
  static const all = <MenuModel>[overView, settings];
}
