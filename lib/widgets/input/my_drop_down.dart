import 'package:flutter/material.dart';

class MyDropDownApp extends StatelessWidget {
  final String title = 'DropDown';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new _DropDownWidget(),
        ),
      ),
    );
  }
}

List<DropdownMenuItem> _items = [
  new DropdownMenuItem(
    child: new Text('赵一'),
    value: 'zy',
  ),
  new DropdownMenuItem(
    child: new Text('钱二'),
    value: 'qe',
  ),
  new DropdownMenuItem(
    child: new Text('孙三'),
    value: 'ss',
  )
];

class _DropDownWidget extends StatefulWidget {
  @override
  _DropDownState createState() {
    return new _DropDownState();
  }
}

class _DropDownState extends State<_DropDownWidget> {
  var _selectedItemValue;

  @override
  Widget build(BuildContext context) {
    return new DropdownButtonHideUnderline(
      child: new DropdownButton(
        hint: new Text('下拉菜单中选择一个人名'),
        value: _selectedItemValue,
        items: _items,
        onChanged: (T) {
          setState(() {
            _selectedItemValue = T;
          });
        },
      ),
    );
  }
}
