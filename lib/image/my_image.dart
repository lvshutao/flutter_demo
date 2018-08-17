import 'package:flutter/material.dart';

class MyImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Image Demo',
      home: new Scaffold(
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Image.network(
                'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg',
              ),
              new Text('Image.network 网络图片'),
              new Image.network(
                'http://test.com/images/demo_ipod.gif',
              ),
              new Text('GIF 动画')
            ],
          ),
        ),
      ),
    );
  }
}
