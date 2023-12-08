import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1126/connected.dart';
import 'package:project_1126/test.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListViewPage(),
    );
  }
}

class MyListViewPage extends StatelessWidget {
  const MyListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
       appBar: AppBar(
         title: const Text("Setting Page"),
         centerTitle: true,
         backgroundColor: Colors.black,
         leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: 'BackToHomePage',
            onPressed: () {
              Get.to(const CubeTest());
            },
          ),
         ),
        body: const MyFunctionCube(),


    );

  }
}

class ChangeColor extends StatelessWidget {
  const ChangeColor({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(

    );
  }
}

class MyFunctionCube extends StatelessWidget {
  const MyFunctionCube({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  <Widget>[
        const SizedBox(height: 50,),
        GestureDetector(
          onTap: (){
          },
          child:const ListTile(
            title: Align(
              alignment: Alignment.center,
              child: Icon(Icons.dark_mode),
            ),
          ),
        ),
        const SizedBox(height:20),
        GestureDetector(
          onTap: (){
          },
          child:const ListTile(
            title: Align(
              alignment: Alignment.center,
              child: Icon(Icons.dark_mode),
            ),
          ),
        ),
        const SizedBox(height: 20,),




      ],
    );
  }
}
