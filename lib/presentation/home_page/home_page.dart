import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/presentation/menu_widget.dart';
import 'package:untitled/presentation/overview_page/overview_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
        leading: const MenuWidget(),
      ),
      body: SafeArea(
          child: IndexedStack(
        index: ,
        children: const [
          OverViewPage(),
        ],
      )),
      bottomNavigationBar: ConvexAppBar(
        onTap: (index) {
          
        },
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.white,
        activeColor: Colors.blue,
        color: Colors.grey,
        height: 50,
        items: const [
          TabItem(icon: FontAwesomeIcons.chartLine, title: 'Thị trường'),
          TabItem(icon: FontAwesomeIcons.fileContract, title: 'Tài sản'),
          TabItem(icon: FontAwesomeIcons.gavel, title: 'Đặt lệnh'),
          TabItem(icon: FontAwesomeIcons.fileSignature, title: 'Hủy/Sửa'),
          TabItem(
              icon: FontAwesomeIcons.moneyCheckDollar, title: 'Chuyển tiền'),
        ],
      ),
    );
  }
}
