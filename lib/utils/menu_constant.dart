import 'package:flutter/material.dart';
import 'package:untitled/model/menu_item.dart';

class MenuItems {
  static const overview =
      MenuModel(title: 'Tổng quan', icons: Icons.pie_chart_outline_sharp);
  static const settings = MenuModel(title: 'Settings', icons: Icons.settings);
  static const all = <MenuModel>[overview, settings];
}
