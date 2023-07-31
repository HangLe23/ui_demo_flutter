import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';
import 'package:ui_demo_flutter/untils/TextStyles/TextStyles.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroudcolor,
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Text(
              'THE MOVIE',
              style: TextStyles.titleTheMovie,
            ),
          ],
        ),
        backgroundColor: Colors.transparent, // Xóa màu nền của AppBar
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/themovie_app_icon.png',
            height: 200,
          ),
        ],
      ),
    );
  }
}
