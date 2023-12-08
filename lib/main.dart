import 'package:flutter/material.dart';
import 'package:project_1126/connected.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:project_1126/data.dart';
import 'package:project_1126/gpt.dart';
import 'package:project_1126/heartbeat.dart';
import 'package:project_1126/setting.dart';
import 'package:project_1126/temperature.dart';
import 'package:project_1126/test.dart';
import 'package:project_1126/userinfo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',//僅能用name
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      defaultTransition: Transition.circularReveal,
      getPages: AppPages.pages,
      home: const ConnectPage(),
    );
  }
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: "/DataPage",
      page: () => const DataPage(),
    ),
    GetPage(
      name: "/ConnectPage",
      page: () =>  const ConnectPage(),
    ),
    GetPage(
      name: "/SettingPage",
      page: () =>  const SettingPage(),
    ),
    GetPage(
      name: "/UserInfoPage",
      page: () =>  const UserInfoPage(),
    ),
    GetPage(
      name: "/CubeTestPage",
      page: () =>  const CubeTest(),
    ),
    GetPage(
      name: "/TemperaturePage",
      page: () =>  const TemperaturePage(),
    ),
    GetPage(
      name: "/HeartBeatPage",
      page: () =>  const HeartBeatPage(),
    ),
  ];
}

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text("Connecting_Page"),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/bluetooth-sync.gif',
              width: 85,
              height: 85,
              //fit: BoxFit.fill,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                //Get.to(const ConnectedPage());// Previous page
                Get.to(const CubeTest()); //To test my tappable cub
                //Navigator.of(context).push(
                    //MaterialPageRoute(builder: (context) => const ConnectedPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: const Text(
                  'Connect',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



