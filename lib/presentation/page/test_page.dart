import 'package:flutter/material.dart';
import 'package:untitled/l10n/multi_languages.dart';
import 'package:untitled/presentation/menu_widget.dart';
import 'package:untitled/utils/app_constant.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MultiLanguages multiLanguages = MultiLanguages();
    return Scaffold(
        appBar: AppBar(
            leading: const MenuWidget(),
            backgroundColor: Colors.cyan,
            title: const Text('Settings Page')),
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
              Text(MultiLanguages.of(context)!.locale.toString()),
            ],
          ),
        ));
  }
}
