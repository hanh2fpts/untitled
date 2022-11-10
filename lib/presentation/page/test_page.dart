import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/l10n/app_localizations.dart';
import 'package:untitled/presentation/widgets/custom_scaffold_widget.dart';
import 'package:untitled/utils/app_constant.dart';

class AssetPage extends StatelessWidget {
  const AssetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomScaffoldWidget(
          titlePage: AppLocalizations.of(context)!.assetPage, context: context),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomScaffoldWidget(
          titlePage: AppLocalizations.of(context)!.orderPage, context: context),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}

class ModifierPage extends StatelessWidget {
  const ModifierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomScaffoldWidget(
          titlePage: AppLocalizations.of(context)!.modifyPage,
          context: context),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomScaffoldWidget(
          titlePage: AppLocalizations.of(context)!.transferPage,
          context: context),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MultiLanguages multiLanguages = MultiLanguages();
    return Scaffold(
        appBar:
            CustomScaffoldWidget(titlePage: 'SettingPage', context: context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  if (await multiLanguages.readLocaleKey() ==
                      AppConstant.languageCodeVI) {
                    multiLanguages.setLocale(
                        context,
                        const Locale(AppConstant.languageCodeEN,
                            AppConstant.countryCodeEN));
                  } else {
                    multiLanguages.setLocale(
                        context,
                        const Locale(AppConstant.languageCodeVI,
                            AppConstant.countryCodeVI));
                  }
                },
                child: const Icon(
                  Icons.flag_circle_rounded,
                  size: 50,
                ),
              ),
              Text(Localizations.localeOf(context).toString()),
            ],
          ),
        ));
  }
}
