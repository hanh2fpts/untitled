import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/l10n/app_localizations.dart';
import 'package:untitled/presentation/main_page/main_page.dart';
import 'package:untitled/utils/app_constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.changeLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale _locale =
      const Locale.fromSubtags(languageCode: AppConstant.languageCodeEN);

  void changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    final multiLanguages = MultiLanguages();
    final localeKey = await multiLanguages.readLocaleKey();
    if (localeKey == AppConstant.languageCodeEN) {
      _locale =
          const Locale(AppConstant.languageCodeEN, AppConstant.countryCodeEN);
    } else {
      _locale =
          const Locale.fromSubtags(languageCode: AppConstant.languageCodeVI);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale(AppConstant.languageCodeEN, AppConstant.countryCodeEN),
        Locale(AppConstant.languageCodeVI, AppConstant.countryCodeVI),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      locale: _locale,
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocaleLanguage in supportedLocales) {
          if (supportedLocaleLanguage.languageCode == locale?.languageCode) {
            return supportedLocaleLanguage;
          }
        }
        return supportedLocales.first;
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.green,
      ),
      home: const MainPage(),
    );
  }
}
