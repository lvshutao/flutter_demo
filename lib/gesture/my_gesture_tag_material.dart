import 'package:flutter/material.dart';

/*
添加 Material 触摸水波效果
https://flutterchina.club/cookbook/gestures/ripples/
*/

class MyGestureTagMaterialApp extends StatelessWidget {
  final String title = 'InkWell Demo';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: _MyHomePage(title: title),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  final String title;

  _MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(title)),
      body: new Center(child: _MyButton()),
    );
  }
}

class _MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text('Tap'),
            ));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text('Flat Button'),
      ),
    );
  }
}
