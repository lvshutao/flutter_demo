import 'package:flutter/material.dart';

/*
https://flutterchina.club/cookbook/gestures/handling-taps/

1. 创建一个 button
2. 把它包装在 GestureDetector 中并提供一个 onTap 回调
 */

class MyGuestureTapApp extends StatelessWidget {
  final String title = '手势';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: _HomePage(
        title: title,
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  final String title;

  _HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: _Button(),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackbar = new SnackBar(content: new Text('如果你点击按钮，我就出现啦'));
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: new Container(
        padding: EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(8.0),
        ),
        child: new Text('按钮'),
      ),
    );
  }
}
