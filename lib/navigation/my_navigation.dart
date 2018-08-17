import 'package:flutter/material.dart';

/*
导航到新页面，并返回
在 Android 中对应的是 Activity, 在 iOS 中是 ViewController

1. 创建两个页面
3. 调用 Navigator.push 导航到第二个页面
3. 调用 Navigator.pop 返回第一个页面
 */

class _FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第一个界面'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            // 2. 使用 Navigator.push 导航到第二个页面
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new _SecondScreen()));
          },
          child: new Text('Launch new screen'),
        ),
      ),
    );
  }
}

class _SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第二个界面'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            // 3. 调用 Navigator.pop 返回第一个界面
            Navigator.pop(context);
          },
          child: new Text('Go back!'),
        ),
      ),
    );
  }
}

// 合并
class MyNavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '基本导航',
      home: _FirstScreen(),
    );
  }
}
