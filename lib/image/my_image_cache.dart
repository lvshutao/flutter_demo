import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

/*
https://flutterchina.club/cookbook/images/cached-images/
依赖包
https://pub.dartlang.org/packages/cached_network_image

cached_network_image包允许我们使用任何Widget作为占位符！
在这个例子中，我们将在图片加载时显示一个进度圈。
 */

class MyImageCacheApp extends StatelessWidget {
  final String title = '缓存图片';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new CachedNetworkImage(
              placeholder: new CircularProgressIndicator(),
              imageUrl: 'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
          ),
        ),
      ),
    );
  }
}

