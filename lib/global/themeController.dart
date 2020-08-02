import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:zhapp/utils/SharedPreferencesDataUtils.dart';

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

  static const Map<String, String> themeDict = {
    "Dark": "开启",
    "Light": "关闭",
    "System": "跟随系统"
  };

  @observable
  ThemeMode themeMode = themes[SharedPreferencesDataUtils.get(SharedPreferencesDataUtils.THEME_PREF)];

  @observable 
  String themeModeItem = themeDict[SharedPreferencesDataUtils.get(SharedPreferencesDataUtils.THEME_PREF)];

  @action
  void setThemeMode(ThemeMode themeMode) {
    this.themeMode = themeMode;
  }

  @action
  void setThemeModeItem(String themeMode) {
    this.themeModeItem = themeMode;
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
