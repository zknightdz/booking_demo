import 'package:booking_demo/di/di.dart';
import 'package:booking_demo/presentations/application/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const Application());
}
