import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1126/connected.dart';

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
       appBar: AppBar(
         title: const Text("Setting Page"),
         centerTitle: true,
         backgroundColor: Colors.grey,
         leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: 'BackToHomePage',
            onPressed: () {
              Get.to(const ConnectedPage());
            },
          ),
         ),
        body: ListView(
            children: const [

            ],
          ),


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

