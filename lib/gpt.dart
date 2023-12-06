import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        body: Center(
          child:Column(
            //mainAxisAlignment: MainAxisAlignment.center, // 在水平方向上置中
            children: [
              SizedBox(height: 50),
              MyWidget1(),
              SizedBox(height: 50),
              MyWidget2(),
              SizedBox(height: 50),
              MyWidget3(),
              // 添加更多小部件...
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 400,
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
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 400,
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
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 400,
      child: Center(
        child: Text('Widget 3'),
      ),
    );
  }
}
