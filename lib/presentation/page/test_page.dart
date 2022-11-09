import 'package:flutter/material.dart';
import 'package:untitled/l10n/multi_languages.dart';
import 'package:untitled/presentation/menu_widget.dart';
import 'package:untitled/utils/app_constant.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const MenuWidget(),
          backgroundColor: Colors.amber,
          title: const Text('Promo Page'),
        ),
        body: Container());
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const MenuWidget(),
            backgroundColor: Colors.green,
            title: const Text('Notification Page')),
        body: Container());
  }
}

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const MenuWidget(),
            backgroundColor: Colors.purple,
            title: const Text('Help Page')),
        body: Container());
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const MenuWidget(),
            backgroundColor: Colors.red,
            title: const Text('About Us Page')),
        body: Container());
  }
}

class RateUsPage extends StatelessWidget {
  const RateUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const MenuWidget(),
            backgroundColor: Colors.cyan,
            title: const Text('Rate Us Page')),
        body: Container());
  }
}

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
