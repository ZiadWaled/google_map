import 'package:flutter/material.dart';
import 'package:google_map_app/presentation/onboarding/view/onboarding_view.dart';
import 'package:google_map_app/resources/theme_manager.dart';

Future<void> main() async {
  runApp(MyApp());
}

@immutable
class MyApp extends StatelessWidget {
  MyApp._internal(); // named constructor

  int? appState = 0;

  static final MyApp _instance =
      MyApp._internal(); // single instance or singleton

  factory MyApp() =>
      _instance; // kol ma andah 3la al class ycareat al singleton

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      home: OnBoardingPage(),
    );
  }
}
