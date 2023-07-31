import 'package:flutter/material.dart';

import '../untils/TextStyles/TextStyles.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Movie',
          style: TextStyles.tittle,
        ),
        backgroundColor: Colors.transparent, // Xóa màu nền của AppBar
        elevation: 0, // Xóa đổ bóng của AppBar
      ),
    );
  }
}
