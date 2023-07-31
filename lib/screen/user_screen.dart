import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';
import 'package:ui_demo_flutter/untils/TextStyles/TextStyles.dart';

import '../authentication/login.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroudcolor,
      appBar: AppBar(
        title: Row(children: [
          const SizedBox(
            width: 150,
          ),
          Text(
            'Profile',
            style: TextStyles.tittle,
          ),
          const Spacer(),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Login(),
                ));
              },
              child: Text('logout', style: TextStyles.lato500Size24))
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //photo
            Card(
              margin: const EdgeInsets.only(left: 15),
              color: Colors.white30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(280),
              ),
              child: const SizedBox(
                width: 280,
                height: 280,
              ),
            ),

            //edit photo
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Edit photo',
                  style: TextStyle(color: Colors.blue, fontSize: 19),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                'Name',
                style: TextStyles.lato400Size24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //textfield name
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                enabled: true,
                controller: TextEditingController(text: 'Le Thanh Hang'),
                style: TextStyles.lato400Size20,
                decoration: const InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        24,
                      ),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
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
            SizedBox(
              width: 300,
              child: Text(
                'Email',
                style: TextStyles.lato400Size24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //textfield email
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                enabled: false,
                controller:
                    TextEditingController(text: 'hangmilo2002@gmail.com'),
                style: TextStyles.lato400Size20,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  border: OutlineInputBorder(
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
            //button save
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
                  'Save',
                  style: TextStyles.lato400Size24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
