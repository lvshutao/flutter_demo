import 'package:flutter/material.dart';

// 使用标准ListView构造函数非常适合仅包含少量条目的列表。
class MyBasicListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '基本 List', // 所以这个标题去哪里了
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Basic List'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Map'),
            ),
            new ListTile(
              leading: new Icon(Icons.photo),
              title: new Text('Album'),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
            )
          ],
        ),
      ),
    );
  }
}
