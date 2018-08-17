import 'package:flutter/material.dart';

class MyContainerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Container Demo',
      home: new Scaffold(
        body: new MyContainer(),
      ),
    );
  }
}

// Container Widget 的示例
class MyContainer extends StatefulWidget {
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 设置外边距
      margin: const EdgeInsets.all(4.0),
      // 内边距
      padding: const EdgeInsets.all(8.0),
      // 添加到 child 上的额外约束
      constraints: new BoxConstraints.expand(
        height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
      ),
      // 背景色，只能与 decoration 二选一
//          color: Colors.amber,
      decoration: new BoxDecoration(
        // 边框
        border: new Border.all(width: 2.0, color: Colors.red),
        // 背景颜色
        color: Colors.grey,
        // 圆角
        borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
        // 背景颜色之上叠加图片
        image: new DecorationImage(
          image: new AssetImage('images/demo.jpg'),
          // 截取此位置
//      centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
          fit: BoxFit.cover,
        ),
      ),
      // child 的对齐方式
      alignment: Alignment.center,
      child: new Text(
        'Hello World',
        // 文字的样式
        style:
            Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
      ),
      // 高度
//          height: double.infinity,
      // 宽度
//          width: double.infinity,
      // 旋转
      transform: new Matrix4.rotationZ(0.3),
//      color: Theme.of(context).accentColor, 错误，未知原因
    );
  }
}
