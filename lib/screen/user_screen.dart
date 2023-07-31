import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';
import 'package:ui_demo_flutter/untils/TextStyles/TextStyles.dart';

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
          const Text('logout', style: TextStyle(color: Colors.red))
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                'Edit photo',
                style: TextStyle(color: Colors.blue, fontSize: 19),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Name',
                  style: TextStyles.lato400Size24,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                enabled: true,
                autofocus: false,
                maxLines: null,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  enabledBorder: OutlineInputBorder(
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
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Email',
                  style: TextStyles.lato400Size24,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextField(
                enabled: true,
                autofocus: false,
                maxLines: null,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        24,
                      ),
                    ),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.white),
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(
                  //       24,
                  //     ),
                  //   ),
                  // ),
                ),
                onChanged: (value) {},
                onSubmitted: (String submitValue) {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              height: 55,
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
