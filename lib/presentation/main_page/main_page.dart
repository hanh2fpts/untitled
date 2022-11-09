import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:untitled/model/menu_item.dart';
import 'package:untitled/presentation/home_page/home_page.dart';
import 'package:untitled/presentation/menu_page/menu_page.dart';
import 'package:untitled/presentation/page/test_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MenuModel currentItem = MenuItems.payment;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        menuBackgroundColor: Colors.indigo,
        borderRadius: 40,
        angle: 0,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        showShadow: true,
        mainScreenTapClose: true,
        style: DrawerStyle.defaultStyle,
        closeCurve: Curves.linear,
        openCurve: Curves.linear,
        menuScreen: Builder(builder: (context) {
          return MenuPage(
              currentItem: currentItem,
              onSelectedItem: (item) {
                setState(() {
                  currentItem = item;
                });
                ZoomDrawer.of(context)!.close();
              });
        }),
        mainScreen: getScreen());
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return const HomePage();
      case MenuItems.promos:
        return const PromoPage();
      case MenuItems.notifications:
        return const NotificationPage();
      case MenuItems.help:
        return const HelpPage();
      case MenuItems.aboutUs:
        return const AboutPage();
      case MenuItems.rateUs:
        return const RateUsPage();
      case MenuItems.settings:
        return const SettingsPage();
      default:
        return const HomePage();
    }
  }
}
