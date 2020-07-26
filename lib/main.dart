import 'dart:io';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zhapp/global/themeController.dart';

import 'navigationBar.dart';

void main() {
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
      theme: themeManager.getThemeData(),
      darkTheme: themeManager.getThemeData(isDarkMode: true),
      themeMode: themeManager.themeMode,
      home: NavigationBar(),
    )); 
  }
}
