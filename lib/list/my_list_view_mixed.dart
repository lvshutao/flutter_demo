import 'package:flutter/material.dart';

/*
使用不同类型的子项创建列表
https://flutterchina.club/cookbook/lists/mixed-list/


2. 将数据源转换为 Widget 列表
 */

// 1. 使用不同类型的数据创建数据源
abstract class _ListItem {}

class _HeadingItem implements _ListItem {
  final String heading;

  _HeadingItem(this.heading);
}

class _MessageItem implements _ListItem {
  final String sender;
  final String body;

  _MessageItem(this.sender, this.body);
}

// 创建 Item 列表

final _items = new List<_ListItem>.generate(
  1200,
  (i) => i % 6 == 0
      ? new _HeadingItem('Heading $i')
      : new _MessageItem('Sender $i', 'Message body $i'),
);

// 2. 将数据源转换为 Widgets 列表
// 需要将每个 item 转换成 widget
Widget _itemsToWidget(List<_ListItem> items) {
  return new ListView.builder(
    // 需要构建的数据
    itemCount: items.length,
    itemBuilder: (context, index) {
      final item = items[index];

      if (item is _HeadingItem) {
        return new ListTile(
          title: new Text(
            item.heading,
            style: Theme.of(context).textTheme.headline,
          ),
        );
      } else if (item is _MessageItem) {
        return new ListTile(
          title: new Text(item.sender),
          subtitle: new Text(item.body),
        );
      }
    },
  );
}

class MyListViewMixedApp extends StatelessWidget {
//  final List<_ListItem> items;
//  MyListViewMixedApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mixed List',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Mixed List'),
        ),
        body: _itemsToWidget(_items),
      ),
    );
  }
}
