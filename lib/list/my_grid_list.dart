import 'package:flutter/material.dart';

// 网格
// https://flutterchina.club/cookbook/lists/grid-lists/

class MyGridList extends StatelessWidget {
  final title = '网格';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new GridView.count(
          crossAxisCount: 2,
          children: new List.generate(100, (index) {
            return new Center(
              child: new Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}
