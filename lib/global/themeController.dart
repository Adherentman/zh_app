import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:zhapp/utils/prefs.dart';

part 'themeController.g.dart';

class ThemeManager = ThemeController with _$ThemeManager;

final ThemeManager themeManager = ThemeManager();

extension ThemeModeExtension on ThemeMode {
  String get value => ['System', 'Light', 'Dark'][index];
}


abstract class ThemeController with Store {
  static const Map<String, ThemeMode> themes = {
    "Dark": ThemeMode.dark,
    "Light": ThemeMode.light,
    "System": ThemeMode.system
  };

  @observable
  ThemeMode themeMode = themes[Prefs.singleton().getTheme()];

  @action
  void setThemeMode(ThemeMode themeMode) {
    this.themeMode = themeMode;
  }

  @action
  ThemeData getThemeData({bool isDarkMode = false}) {
    return ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      primaryColor: isDarkMode ? Colors.black12 : Colors.red,
    );
  }
}
