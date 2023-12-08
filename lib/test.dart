import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1126/connected.dart';
import 'package:project_1126/heartbeat.dart';
import 'package:project_1126/setting.dart';
import 'package:project_1126/temperature.dart';

/*void main() {
  runApp(CubeTest());
}*/
int changecolor =900;

class CubeTest extends StatelessWidget {
  const CubeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: const Text('CubTest'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Search',
              onPressed: () {
                Get.to(const SettingPage(),transition: Transition.fadeIn);
              },
            ),
          ],
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
          //child: const MyFunctionCube(),
          child: const MyCubeTest(),
        ),

      ),
    );
  }
}

class MyCubeTest extends StatelessWidget {
  const MyCubeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const[
        SizedBox(height: 20,),
        TappableCube_Temp(),
        SizedBox(height: 20,),
        TappableCube_HeartBeat(),
      ],
    );
  }
}

class TappableCube_Temp extends StatelessWidget {
  const TappableCube_Temp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const TemperaturePage(),transition: Transition.fadeIn);
      },
      child: Container(
        height: 150,
        width: 500,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          //border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
class TappableCube_HeartBeat extends StatelessWidget {
  const TappableCube_HeartBeat({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const HeartBeatPage(),transition: Transition.fadeIn);
      },
      child: Container(
        height: 150,
        width: 500,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          //border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
class TappableCube_Blood extends StatelessWidget {
  const TappableCube_Blood({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const HeartBeatPage());
      },
      child: Container(
        height: 150,
        width: 500,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          //border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12.0),
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
        const SizedBox(height: 30,),
        InkWell( //可以用GestureDetector()實現點擊時沒有漣漪效果
          onTap: () {

          },
          //splashColor: Colors.grey[300],
          child: const ListTile(
            tileColor: Color(0xD0D0D3C4),
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


