import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/authentication/login.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/themovie_app_icon.png',
              height: 200,
            ),
            Text(
              'Register',
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
            //textfeild password
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                enabled: true,
                autofocus: false,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Enter your Password',
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
            //confirm password
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Text(
                'Confirm Password',
                style: TextStyles.lato400Size24,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            //textfeild password
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                enabled: true,
                autofocus: false,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
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
            //button login
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.button,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  child: Text(
                    'Sign Up',
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
                  'Aready have an account?',
                  style: TextStyles.lato400Size20,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
                  },
                  child: Text(
                    'Sign In',
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
