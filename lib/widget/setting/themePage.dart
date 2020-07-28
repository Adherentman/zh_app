import 'package:flutter/material.dart';
import 'package:zhapp/global/themeController.dart';
import 'package:zhapp/utils/SharedPreferencesDataUtils.dart';

class ThemePage extends StatelessWidget {
  final List<String> _list = ['跟随系统', '开启', '关闭'];

  Future<void> setThemeMode(int index) async {
    ThemeMode themeMode = index == 0
        ? ThemeMode.system
        : (index == 1 ? ThemeMode.dark : ThemeMode.light);
    SharedPreferencesDataUtils.set(
        SharedPreferencesDataUtils.THEME_PREF, themeMode.value);
    themeManager.setThemeMode(themeMode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sdsd"),
      ),
      body: ListView.separated(
          separatorBuilder: (_, index) => const Divider(),
          itemCount: _list.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                setThemeMode(index);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text(_list[index])),
                    // Opacity(opacity: null)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
