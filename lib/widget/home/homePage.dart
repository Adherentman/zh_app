import 'package:flutter/material.dart';
import 'package:zhapp/widget/setting/settingPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Row(children: [new Text('home')],)
    );
  }
}
