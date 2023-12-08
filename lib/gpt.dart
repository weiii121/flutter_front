import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          centerTitle: true,
        ),
        body: const Center(
          child:Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Temperature(),
              SizedBox(height: 50),
              MyWidget2(),
              SizedBox(height: 50),
              MyWidget3(),
            ],
          ),
        ),
      ),
    );
  }
}

class Temperature extends StatelessWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 400,
      child: const Temperature_index(),
    );
  }
}

class Temperature_index extends StatelessWidget {
  const Temperature_index({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [

      ],
    );
  }
}
class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 400,
      child:  Center(
        child:  ListTile(
          onTap: (){

          },

          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          title: const  Align(
            alignment: Alignment.center,
            child: Icon(Icons.dark_mode),
          ),
        ),
      ),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: 400,
      child: const Center(
        child: Text('Widget 3'),
      ),
    );
  }
}
