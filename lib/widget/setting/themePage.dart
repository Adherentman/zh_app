import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ThemePage extends StatelessWidget {
  final List<String> _list = ['跟随系统', '开启', '关闭'];

  Future<void> setThemeMode(int index, BuildContext context) async {
    switch (index) {
      case 0:
        AdaptiveTheme.of(context).setSystem();
        break;
      case 1:
        AdaptiveTheme.of(context).setDark();
        break;
      case 2:
        AdaptiveTheme.of(context).setLight();
        break;
      default:
        AdaptiveTheme.of(context).setLight();
        break;
    }
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
                setThemeMode(index, context);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text(_list[index])),
                    // Opacity(
                    //   opacity:
                    //       themeManager.themeModeItem == _list[index] ? 1 : 0,
                    //   child: Icon(Icons.done, color: Colors.blue),
                    // ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
