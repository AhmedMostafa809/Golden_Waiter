import 'package:flutter/material.dart';
import 'package:golden_waiter/view/order_timing_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

ThemeData _darkTheme = ThemeData(
    hintColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ));

ThemeData _lightTheme = ThemeData(
    hintColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: _lightTheme,
        darkTheme: _darkTheme,
        themeMode: ThemeMode.system,
        home: const OrderTimingPage(),
      );
    });
  }
}


