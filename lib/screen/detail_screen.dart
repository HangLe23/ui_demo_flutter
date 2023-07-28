import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.backgroudcolor,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/banner_detail.png',
                  height: 345.67,
                ),
                Positioned(
                    left: 20,
                    top: 30,
                    child: Card(
                      color: Colors.white30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(55),
                      ),
                      child: SizedBox(
                        width: 55,
                        height: 55,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    )),
                Positioned(
                    left: 175,
                    top: 150,
                    child: Card(
                      color: Colors.white30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(77),
                      ),
                      child: SizedBox(
                        width: 77,
                        height: 77,
                        child: IconButton(
                          icon: const Icon(
                            Icons.play_arrow,
                          ),
                          color: CustomColors.selected,
                          onPressed: () {},
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Star Wars: The Last Jadi',
                  //style: TextStyles.lato400Size19,
                ),
              ],
            )
          ],
        ));
  }
}
