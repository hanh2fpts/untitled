import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              const HeaderMenu(),
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

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            maxRadius: 23,
            backgroundColor: Colors.white,
            foregroundColor: Colors.indigo,
            child: Icon(FontAwesomeIcons.userTie),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                '058C000138',
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
              ),
              Text(
                'NGUYEN MINH TUAN',
                style: TextStyle(fontSize: 12, fontStyle: FontStyle.normal),
              )
            ],
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.gear,
            size: 20,
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: const Text('Notification'),
                    content: const Text('Do you want to log out ?'),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK')),
                    ],
                  );
                },
              );
            },
            child: const Icon(
              FontAwesomeIcons.powerOff,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
