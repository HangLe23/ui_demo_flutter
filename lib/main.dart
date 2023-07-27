import 'package:flutter/material.dart';

import 'screen/detail_screen.dart';
import 'screen/home_screen.dart';
import 'screen/info_screen.dart';
import 'screen/play_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DetailScreen(),
      // Scaffold(
      //   backgroundColor: const Color(0x0015141f),
      //   body: _buildCurrentScreen(),
      //   bottomNavigationBar: BottomNavigationBar(
      //     //backgroundColor: const Color(0x0015141f),
      //     currentIndex: _currentIndex,
      //     onTap: _onItemTapped,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //         ),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.play_arrow),
      //         label: 'Play',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Info',
      //       ),
      //     ],
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildCurrentScreen() {
    switch (_currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return PlayScreen();
      case 2:
        return InfoScreen();
      default:
        return const HomeScreen(); // Màn hình mặc định
    }
  }
}
