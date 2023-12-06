import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1126/data.dart';
import 'package:project_1126/setting.dart';
import 'package:project_1126/userinfo.dart';

class ConnectedPage extends StatelessWidget {
  const ConnectedPage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Search',
              onPressed: () {
                Get.to(const SettingPage());
              },
            ),
          ],
          title: const Text("SPIE-earpods"),
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 20),

        ),
        /*body: const TabBarView(
            children: [
              UserInfoPage(),
              DataPage(),
              SettingPage(),
            ]
      ),*/

    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}