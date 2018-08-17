import 'package:flutter/material.dart';

/*
UI 组件的颜色主要由 primary 和 accent 颜色
primary 通常可以认为是背景颜色，即程序的主色调
而 accent 颜色则可认为能够区分背景颜色的提示性文字（不是输入框颜色）
https://stackoverflow.com/questions/31021198/whats-the-accent-color

查看 https://material.io/design/color/#color-theme-creation
accent 可看作 Secondary color

https://flutterchina.club/cookbook/design/themes/
 */

class MyThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Theme Demo';

    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600]),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          // 文字变更题
          color: Theme.of(context).accentColor,
          child: new Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: new Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.yellow),
        child: new FloatingActionButton(
          onPressed: null,
          child: new Icon(Icons.add),
        ),
      ),
    );
  }
}
