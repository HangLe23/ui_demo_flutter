import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/screen/discover_screen.dart';
import 'package:ui_demo_flutter/screen/home_screen.dart';
import 'package:ui_demo_flutter/screen/user_screen.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: const Color(0x0015141f),
        body: _buildCurrentScreen(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF15141f),
          currentIndex: currentIndex,
          onTap: (index) => onchange(index),
          selectedItemColor: CustomColors.selected,
          unselectedItemColor: CustomColors.unselected,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: 'Play',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Info',
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildCurrentScreen() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const DiscoverScreen();
      case 2:
        return const UserScreen();
      default:
        return const HomeScreen(); // Màn hình mặc định
    }
  }

  onchange(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
