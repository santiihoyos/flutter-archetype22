import 'package:flutter_poc/di/injector.dart';
import 'package:flutter_poc/ui/pager.dart';
import 'package:flutter_poc/ui/theme/booking_theme.dart';
import 'package:flutter_poc/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class BarberBookApp extends StatelessWidget {

  const BarberBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateTitle: (ctx) => getAppLocalizationsOf(ctx).app_name,
      theme: ingenioBarberDarkThemeData,
      darkTheme: ingenioBarberDarkThemeData,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      initialRoute: "/",
      getPages: Pager(
        injector: Injector.getInstance(),
      ).pages,
    );
  }
}
