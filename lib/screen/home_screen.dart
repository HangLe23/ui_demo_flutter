import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final List<String> entries = <String>['A', 'B', 'C'];
  //final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0x0015141f),
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
                  left: 43,
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
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 404,
                    width: 160,
                    //color: Colors.amber[colorCodes[index]],
                    //child: Center(child: Text('Entry ${entries[index]}')),
                  );
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
