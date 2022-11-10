import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/presentation/home_page/cubit/home_page_cubit.dart';
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
          body: IndexedStack(
            index: state.index,
            children: const [
              OverViewPage(),
              AssetPage(),
              OrderPage(),
              ModifierPage(),
              TransferPage()
            ],
          ),
          bottomNavigationBar: ConvexAppBar(
            onTap: (index) {
              context.read<HomePageCubit>().selectPage(index);
            },
            style: TabStyle.fixedCircle,
            backgroundColor: Colors.white,
            activeColor: Colors.blue,
            color: Colors.grey,
            height: 50,
            items: [
              TabItem(
                  icon: FontAwesomeIcons.chartLine,
                  title: AppLocalizations.of(context)!.marketPage),
              TabItem(
                  icon: FontAwesomeIcons.fileContract,
                  title: AppLocalizations.of(context)!.assetPage),
              TabItem(
                  icon: FontAwesomeIcons.gavel,
                  title: AppLocalizations.of(context)!.orderPage),
              TabItem(
                  icon: FontAwesomeIcons.fileSignature,
                  title: AppLocalizations.of(context)!.modifyPage),
              TabItem(
                  icon: FontAwesomeIcons.moneyCheckDollar,
                  title: AppLocalizations.of(context)!.transferPage),
            ],
          ),
        );
      },
    );
  }
}
