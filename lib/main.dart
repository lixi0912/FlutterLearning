import 'package:flutter/material.dart';

void main() => runApp(new Launcher());

class Launcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new LauncherPage(),
    );
  }
}

class LauncherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("hello world"),
    );
  }
}
