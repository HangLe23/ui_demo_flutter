import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/items/top_rate_item.dart';

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
        imageUrl: 'assets/images/movie1.png',
        name: 'Soul',
      ),
    ];

    return Scaffold(
        backgroundColor: const Color(0xFF15141f),
        appBar: AppBar(
          title: const Text(
            'Hello Guest, ',
            style: TextStyle(color: Colors.white, fontSize: 28.91),
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
                    child: const SizedBox(
                      width: 254,
                      height: 74,
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          Text(
                            'Offical trailer',
                            style:
                                TextStyle(color: Colors.white, fontSize: 19.27),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'Top rated',
              style: TextStyle(color: Colors.white, fontSize: 28.91),
            ),
            Expanded(
              child: ListView.separated(
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
