import 'package:flutter/material.dart';

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
          title: const Text('CubTest'),
          centerTitle: true,
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
          child: const MyFunctionCube(),
        ),
      ),
    );
  }
}

class MyFunctionCube extends StatelessWidget {
  const MyFunctionCube({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  <Widget>[
        InkWell(
          onTap: () {
            print("1");
          },
          //splashColor: Colors.grey[300],
          child: const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            title: Align(
              alignment: Alignment.center,
              child: Icon(Icons.dark_mode),
            ),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            print("2");
          },
          //splashColor: Colors.grey[300],
          child: const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            title: Align(
              alignment: Alignment.center,
              child: Icon(Icons.dark_mode),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const ListTile(
          tileColor: Color(0xD0D0D3C4),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          title: Align(
            alignment: Alignment.center,
            child: Icon(Icons.dark_mode),
          ),

        ),
        const SizedBox(height: 20,),
        const ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          title: Align(
            alignment: Alignment.center,
            child: Icon(Icons.dark_mode),
          ),
        ),

      ],
    );
  }
}


