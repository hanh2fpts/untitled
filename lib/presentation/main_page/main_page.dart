import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:untitled/model/menu_item.dart';
import 'package:untitled/presentation/home_page/cubit/home_page_cubit.dart';
import 'package:untitled/presentation/home_page/home_page.dart';
import 'package:untitled/presentation/menu_page/menu_page.dart';
import 'package:untitled/presentation/page/test_page.dart';
import 'package:untitled/utils/menu_constant.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MenuModel currentItem = MenuItems.overView;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        menuBackgroundColor: Colors.indigo,
        borderRadius: 40,
        angle: 0,
        slideWidth: MediaQuery.of(context).size.width * 0.75,
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
      case MenuItems.overView:
        return BlocProvider(
          create: (context) => HomePageCubit(),
          child: const HomePage(),
        );
      case MenuItems.settings:
        return const SettingsPage();
      default:
        return const HomePage();
    }
  }
}
