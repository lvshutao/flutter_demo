import 'package:flutter/material.dart';

/*
实现滑动关闭
https://flutterchina.club/cookbook/gestures/dismissible/
示例错误提示：flutter: Another exception was thrown: RangeError (index): Invalid value: Not in range 0..16, inclusive: 19
 */

// 1. 创建 item 列表
// 创建一个可以滑动的列表

final _items = new List<String>.generate(20, (i) => "Item ${i + 1}");

// 2. 将数据源转换为 List
Widget _itemsToList(List<String> items) {
  return ListView.builder(
    itemBuilder: (context, index) {
      final item = items[index];

      return new Dismissible(
        key: new Key(item),
        child: new ListTile(
          title: new Text('${items[index]}'),
        ),
        background: new Container(
          color: Colors.red,
        ),
        onDismissed: (direction) {
          items.removeAt(index);
          Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text("$item dismissed"),
              ));
        },
      );
    },
    itemCount: items.length,
  );
}

// 3. 将每个 item 包装在 Dismissible Widget 中
// 并且提借滑动背景提示

class MyGuestureDismissableApp extends StatelessWidget {
  final String title = '滑动手势';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: _itemsToList(_items),
      ),
    );
  }
}
