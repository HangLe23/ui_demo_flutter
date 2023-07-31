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
        backgroundColor: Colors.transparent, // Xóa màu nền của AppBar
        elevation: 0,
      ),
      body: Column(children: [
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
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: TextField(
              enabled: false,
              autofocus: false,
              maxLines: null,
              decoration: InputDecoration(
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
                prefixText: 'Le Thanh Hang',
                prefixStyle: TextStyles.lato400Size24,
              ),
              onChanged: (value) {},
              onSubmitted: (String submitValue) {},
            )),
            const SizedBox(
              width: 20,
            )
          ],
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
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: TextField(
              enabled: false,
              autofocus: false,
              maxLines: null,
              decoration: InputDecoration(
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
                prefixText: 'hangmilo2002@gmail.com',
                prefixStyle: TextStyles.lato400Size24,
              ),
              onChanged: (value) {},
              onSubmitted: (String submitValue) {},
            )),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        ElevatedButton(onPressed: () {}, child: const Text('Save'))
      ]),
    );
  }
}
