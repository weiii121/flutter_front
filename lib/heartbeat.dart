import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1126/test.dart';


class HeartBeatPage extends StatelessWidget {
  const HeartBeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading:
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            tooltip: 'Search',
            onPressed: () {
              Get.to(const CubeTest());
            },
          ),
          title: const Text("HeartBeatPage"),
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 20),

        ),
      ),
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