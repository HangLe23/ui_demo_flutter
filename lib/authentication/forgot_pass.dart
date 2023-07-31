import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/authentication/login.dart';

import '../untils/Colors/colors.dart';
import '../untils/TextStyles/TextStyles.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
          Text(
            'Forgot Password',
            style: TextStyles.titleAuthen,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              'Email',
              style: TextStyles.lato400Size24,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //textfeild email
          SizedBox(
            width: 350,
            height: 50,
            child: TextField(
              enabled: true,
              autofocus: false,
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'Enter your Email',
                hintStyle: TextStyles.hint,
                filled: true,
                fillColor: Colors.white30,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      24,
                    ),
                  ),
                ),
              ),
              onChanged: (value) {},
              onSubmitted: (String submitValue) {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //button send
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.button,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: Text(
                  'Send',
                  style: TextStyles.lato400Size24,
                )),
          ),
          //back to login
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Login(),
                ));
              },
              child: Text(
                'Back to login',
                style: TextStyles.bluetext,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
