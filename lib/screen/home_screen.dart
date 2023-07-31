import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/items/top_rate_item.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';
import 'package:ui_demo_flutter/untils/TextStyles/TextStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<TopRateItem> listImages = [
      const TopRateItem(
        imageUrl: 'assets/images/TheLastJedi.png',
        name: 'Star Wars: The Last Jedi',
      ),
      const TopRateItem(
        imageUrl: 'assets/images/TheLastJedi.png',
        name: 'Star Wars: The Last Jedi',
      ),
      const TopRateItem(
        imageUrl: 'assets/images/TheLastJedi.png',
        name: 'Star Wars: The Last Jedi',
      ),
      const TopRateItem(
        imageUrl: 'assets/images/TheLastJedi.png',
        name: 'Star Wars: The Last Jedi',
      ),
    ];

    return Scaffold(
        backgroundColor: const Color(0xFF15141f),
        appBar: AppBar(
          title: Text(
            'Hello Guest, ',
            style: TextStyles.tittle,
          ),
          backgroundColor: Colors.transparent, // Xóa màu nền của AppBar
          elevation: 0, // Xóa đổ bóng của AppBar
        ),
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset(
                    'assets/images/banner.png',
                    width: 393.85,
                    height: 230.05,
                  ),
                ),
                Positioned(
                  bottom: 12,
                  left: 12,
                  child: Card(
                    color: Colors.white30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: SizedBox(
                      width: 254,
                      height: 74,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.play_arrow,
                            color: CustomColors.selected,
                            size: 19,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('Offical trailer',
                              style: TextStyles.lato400Size19),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                'Top rated',
                style: TextStyles.tittle,
              ),
            ]),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                itemCount: listImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 230, child: listImages[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 16,
                ),
              ),
            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
