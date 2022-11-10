import 'package:flutter/material.dart';

class MenuModel {
  final String title;
  final IconData icons;
  final List<MenuModel> subMenu;
  const MenuModel(
      {required this.title, required this.icons, this.subMenu = const []});
}
