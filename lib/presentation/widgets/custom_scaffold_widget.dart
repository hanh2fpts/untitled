import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CustomScaffoldWidget extends AppBar {
  final String titlePage;
  final BuildContext context;
  final List<Widget> listActionItem;
  CustomScaffoldWidget(
      {super.key,
      required this.titlePage,
      required this.context,
      this.listActionItem = const <Widget>[]});

  @override
  Color? get backgroundColor => Colors.blue;
  @override
  Widget? get title => Text(titlePage);
  @override
  Widget? get leading => IconButton(
      onPressed: () => ZoomDrawer.of(context)!.toggle(),
      icon: const Icon(Icons.menu));
}
