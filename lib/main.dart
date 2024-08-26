import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final FlutterLocalization localization = FlutterLocalization.instance;

    return const MaterialApp(
      supportedLocales:  [Locale('ru')],
      localizationsDelegates:  [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
