import 'dart:io';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zhapp/global/themeController.dart';
import 'package:zhapp/utils/SharedPreferencesDataUtils.dart';
import 'package:zhapp/widget/setting/themePage.dart';

import 'navigationBar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesDataUtils.getInstance();
  runApp(MyApp());
  // 透明状态栏
  if (Platform.isAndroid) {
    final SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: themeManager.getThemeData(),
      darkTheme: themeManager.getThemeData(isDarkMode: true),
      themeMode: themeManager.themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationBar(),
        'setting/theme_page': (context) => ThemePage()
      },
    )); 
  }
}
