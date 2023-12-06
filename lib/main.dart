import 'package:flutter/material.dart';
import 'package:project_1126/connected.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:project_1126/data.dart';
import 'package:project_1126/setting.dart';
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
      defaultTransition: Transition.fade,
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

  ];
}

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
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
                Get.to(const ConnectedPage());
                //Navigator.of(context).push(
                    //MaterialPageRoute(builder: (context) => const ConnectedPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[400],
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



