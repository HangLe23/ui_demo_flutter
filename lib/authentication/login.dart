import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/authentication/forgot_pass.dart';
import 'package:ui_demo_flutter/authentication/register.dart';
import 'package:ui_demo_flutter/new.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';

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
      backgroundColor: CustomColors.backgroudcolor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'The Movie',
            style: TextStyles.titleTheMovie,
          ),
        ),
        backgroundColor: Colors.transparent, // Xóa màu nền của AppBar
        elevation: 0, // Xóa đổ bóng của AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/themovie_app_icon.png',
              height: 200,
            ),
            Text(
              'Login',
              style: TextStyles.titleAuthen,
            ),
            const SizedBox(
              height: 10,
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
            //textfield email
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                enabled: true,
                autofocus: false,
                style: TextStyles.lato400Size20,
                decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: TextStyles.hint,
                    filled: true,
                    fillColor: Colors.white30,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          24,
                        ),
                      ),
                    )),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Text(
                'Password',
                style: TextStyles.lato400Size24,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            //textfield password
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                enabled: true,
                style: TextStyles.lato400Size20,
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  hintStyle: TextStyles.hint,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.remove_red_eye,
                      color: CustomColors.hint,
                      size: 20,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white30,
                  border: const OutlineInputBorder(
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
            //forgot password
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForgotPassword(),
                    ));
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyles.bluetext,
                  ),
                ),
                const SizedBox(
                  width: 50,
                )
              ],
            ),
            //button login
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MainApp(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.button,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  child: Text(
                    'Login',
                    style: TextStyles.lato400Size24,
                  )),
            ),
            Row(
              children: [
                const DriverWidget(),
                Text(
                  'OR',
                  style: TextStyles.or,
                ),
                const DriverWidget()
              ],
            ),
            //login with google
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      Image.asset(
                        'assets/images/google.png',
                        scale: 3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Login with Google',
                        style: TextStyles.lato400Size18,
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            //login with facebook
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Image.asset(
                        'assets/images/Facebook.png',
                        scale: 3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Login with Facebook',
                        style: TextStyles.lato400Size18,
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            //login with apple
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      Image.asset(
                        'assets/images/apple.png',
                        scale: 3,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Login with Apple',
                        style: TextStyles.lato400Size18,
                      ),
                    ],
                  )),
            ),
            //signup
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  'You have do not account?',
                  style: TextStyles.lato400Size20,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Register(),
                    ));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyles.signup,
                  ),
                ),
                const SizedBox(
                  width: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DriverWidget extends StatelessWidget {
  const DriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 150,
      margin: const EdgeInsets.all(20),
      color: CustomColors.line,
    );
  }
}
