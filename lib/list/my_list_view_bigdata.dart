import 'package:flutter/material.dart';

/*
长列表
为了构造大量数据的列表，最好使用 ListView.builder 构造函数
 */

class MyListViewBigdataApp extends StatelessWidget {
  // 1. 创建一个数据源
  final items = new List<String>.generate(1000, (i) => 'Item $i');

  // 2. 将数据源转换成 Widgets

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Long List'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
