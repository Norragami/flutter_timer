import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final FlutterLocalization localization = FlutterLocalization.instance;

    return MaterialApp(
      supportedLocales: const [Locale('ru')],
      localizationsDelegates: localization.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
