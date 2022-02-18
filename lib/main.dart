import 'package:flutter/material.dart';
import 'package:flutter_application_1/four.dart';
import 'package:flutter_application_1/one.dart';
import 'package:flutter_application_1/three.dart';
import 'package:flutter_application_1/tow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;
  final pages = [
    One(),
    Two(),
    Three(),
    Four(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("hello")),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.deepOrange,
                icon: Icon(Icons.message),
                title: Text("messege")),
            BottomNavigationBarItem(
                icon: Icon(Icons.call), title: Text("Call")),
            BottomNavigationBarItem(
                icon: Icon(Icons.pan_tool), title: Text("Pan Tool")),
            BottomNavigationBarItem(
                icon: Icon(Icons.radio), title: Text("Radio")),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
        body: pages[_currentindex]);
  }
}
