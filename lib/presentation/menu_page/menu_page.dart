import 'package:flutter/material.dart';
import 'package:untitled/model/menu_item.dart';

class MenuItems {
  static const payment = MenuModel(title: 'Payment', icons: Icons.payment);
  static const promos = MenuModel(title: 'Promos', icons: Icons.card_giftcard);
  static const notifications =
      MenuModel(title: 'Notifications', icons: Icons.notifications);
  static const help = MenuModel(title: 'Help', icons: Icons.help);
  static const aboutUs =
      MenuModel(title: 'About Us', icons: Icons.info_outline);
  static const rateUs = MenuModel(title: 'Rate Us', icons: Icons.star_border);
  static const settings = MenuModel(title: 'Settings', icons: Icons.settings);
  static const all = <MenuModel>[
    payment,
    promos,
    notifications,
    help,
    aboutUs,
    rateUs,
    settings
  ];
}

class MenuPage extends StatelessWidget {
  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);
  final MenuModel currentItem;
  final ValueChanged<MenuModel> onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuModel item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icons),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
