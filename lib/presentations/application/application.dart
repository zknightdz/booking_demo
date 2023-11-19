import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/manifest.dart';
import 'package:booking_demo/presentations/screens/dashboard/dashboard_route.dart';
import 'package:booking_demo/utilities/routes/route_define.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeManager(
      timeStamp: DateTime.now().millisecondsSinceEpoch,
      child: GetMaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        locale: Get.deviceLocale,
        theme: ThemeData(
          brightness: brightness,
        ),
        fallbackLocale: const Locale('en'),
        initialRoute: DashboardRoute().routeName,
        onGenerateRoute: (settings) => manifest(generateRoutes, settings),
      ),
    );
  }
}
