import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/pages/HomePage.dart';
import 'package:untitled7/pages/SettingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    SettingPage()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.deepPurple
          ),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: _pages.elementAt(_selectIndex),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey[400],
              iconSize: 30,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Settings'
                )
              ],
              currentIndex: _selectIndex,
              onTap: _onItemTapped,

            ),
          ),
        );
      },
    );
  }
}
