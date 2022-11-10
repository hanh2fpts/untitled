import 'package:flutter/material.dart';
import 'package:untitled/model/menu_item.dart';
import 'package:untitled/utils/menu_constant.dart';

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
