import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            MyWidget1(),
            MyWidget2(),
            MyWidget3(),
            // 添加更多小部件...
          ],
        ),
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 50,
      width: 200,
      child: Center(
        child: Text('Widget 1'),
      ),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 50,
      width: 200,
      child: Center(
        child: Text('Widget 2'),
      ),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 50,
      width: 200,
      child: Center(
        child: Text('Widget 3'),
      ),
    );
  }
}
