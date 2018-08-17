import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

// 使用占位符淡入图片 : FadeInImage
// FadeInImage适用于任何类型的图片：内存、本地Asset或来自网上的图片。
// 依赖包
// https://flutterchina.club/cookbook/images/fading-in-images/

class MyImagePladeholderApp extends StatelessWidget {
  final String title = '图像占位符';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(
          children: <Widget>[
            new Center(
              child: new CircularProgressIndicator(),
            ),
            new Center(
              child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
