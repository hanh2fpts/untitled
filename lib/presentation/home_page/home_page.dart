import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/presentation/home_page/cubit/home_page_cubit.dart';
import 'package:untitled/presentation/widgets/custom_scaffold_widget.dart';
import 'package:untitled/presentation/overview/overview_page.dart';
import 'package:untitled/presentation/page/test_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomScaffoldWidget(
            titlePage: state.titlePage,
            context: context,
          ),
          body: SafeArea(
              child: IndexedStack(
            index: state.index,
            children: const [
              OverViewPage(),
              AssetPage(),
              OrderPage(),
              ModifierPage(),
              TransferPage()
            ],
          )),
          bottomNavigationBar: ConvexAppBar(
            onTap: (index) {
              context.read<HomePageCubit>().selectPage(index);
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
                  icon: FontAwesomeIcons.moneyCheckDollar,
                  title: 'Chuyển tiền'),
            ],
          ),
        );
      },
    );
  }
}
