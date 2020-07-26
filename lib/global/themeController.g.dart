// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themeController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeManager on ThemeController, Store {
  final _$themeModeAtom = Atom(name: 'ThemeController.themeMode');

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  final _$ThemeControllerActionController =
      ActionController(name: 'ThemeController');

  @override
  void setThemeMode(ThemeMode themeMode) {
    final _$actionInfo = _$ThemeControllerActionController.startAction(
        name: 'ThemeController.setThemeMode');
    try {
      return super.setThemeMode(themeMode);
    } finally {
      _$ThemeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  ThemeData getThemeData({bool isDarkMode = false}) {
    final _$actionInfo = _$ThemeControllerActionController.startAction(
        name: 'ThemeController.getThemeData');
    try {
      return super.getThemeData(isDarkMode: isDarkMode);
    } finally {
      _$ThemeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode}
    ''';
  }
}
