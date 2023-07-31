import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/items/cast_drew_item.dart';
import 'package:ui_demo_flutter/screen/cast_drew.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';

import '../untils/TextStyles/TextStyles.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<CastDrewItem> listImages = [
    const CastDrewItem(
      imageUrl: 'assets/images/StephanieBeatriz.png',
      name: 'Stephanie Beatriz',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/StephanieBeatriz.png',
      name: 'Stephanie Beatriz',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/StephanieBeatriz.png',
      name: 'Stephanie Beatriz',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/StephanieBeatriz.png',
      name: 'Stephanie Beatriz',
    ),
  ];
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
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Star Wars: The Last Jadi',
                  style: TextStyles.lato500Size28,
                ),
                const SizedBox(
                  width: 10,
                ),
                Card(
                    color: Colors.white30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: SizedBox(
                        width: 34.95,
                        height: 26.55,
                        child: Center(
                          child: Text(
                            '4K',
                            style: TextStyles.lato400Size14,
                          ),
                        )))
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.access_time,
                  size: 14.45,
                  color: CustomColors.decription,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '152 minutes',
                  style: TextStyles.decription,
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.star,
                  size: 14.45,
                  color: CustomColors.decription,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '7.0 (IMDb)',
                  style: TextStyles.decription,
                )
              ],
            ),
            const DriverWidget(),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Release date',
                  style: TextStyles.lato500Size19,
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  'Genre',
                  style: TextStyles.lato500Size19,
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'December 9, 2017',
                  style: TextStyles.decription,
                ),
                const SizedBox(
                  width: 85,
                ),
                Card(
                  color: Colors.white30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: SizedBox(
                      width: 72,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Action',
                          style: TextStyles.decription,
                        ),
                      )),
                ),
                Card(
                  color: Colors.white30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: SizedBox(
                      width: 72,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Sci-Fi',
                          style: TextStyles.decription,
                        ),
                      )),
                ),
              ],
            ),
            const DriverWidget(),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Overview',
                  style: TextStyles.lato500Size19,
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn',
                    style: TextStyles.decription,
                    softWrap: true,
                  ),
                ),
              ],
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
                  'Cast & Drew',
                  style: TextStyles.lato500Size19,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CastDrewScreen(),
                    ));
                  },
                  child: Text(
                    'More... ',
                    style: TextStyles.decription,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: listImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 100,
                    child: listImages[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 16,
                ),
              ),
            )
          ],
        ));
  }
}

class DriverWidget extends StatelessWidget {
  const DriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: const EdgeInsets.all(20),
      color: CustomColors.textColor,
    );
  }
}
