import 'package:flutter/material.dart';
import 'package:postalhub_client/src/navigator/navigator_services.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:postalhub_client/src/postalhub_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
      return MaterialApp(
          theme: ThemeData(
            colorScheme: lightDynamic ?? lightColorScheme,
            fontFamily: 'GoogleSans',
          ),
          darkTheme: ThemeData(
            colorScheme: darkDynamic ?? darkColorScheme,
            fontFamily: 'GoogleSans',
          ),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const NavigatorServices());
    });
  }
}
