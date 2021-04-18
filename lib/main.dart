import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zhapp/widget/setting/themePage.dart';

import 'navigationBar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
  // 透明状态栏
  if (Platform.isAndroid) {
    final SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  MyApp({this.savedThemeMode});
  final AdaptiveThemeMode? savedThemeMode;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.amber,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
          accentColor: Colors.amber,
        ),
        initial: savedThemeMode ?? AdaptiveThemeMode.system,
        builder: (theme, darkTheme) => MaterialApp(
              title: 'Flutter Demo',
              theme: theme,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              routes: {
                '/': (context) => NavigationBar(),
                'setting/theme_page': (context) => ThemePage()
              },
            ));
  }
}
