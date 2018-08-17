import 'package:flutter/material.dart';

class MyRowApp extends StatelessWidget {
  final String title = 'MyRow';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: null,
      ),
    );
  }
}
