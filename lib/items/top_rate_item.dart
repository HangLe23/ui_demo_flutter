import 'package:flutter/material.dart';

import '../screen/detail_screen.dart';

class TopRateItem extends StatelessWidget {
  final String imageUrl;
  final String name;

  const TopRateItem({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const DetailScreen(),
          ));
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: Image.asset(imageUrl),
            ),
            Positioned(
              bottom: 12,
              left: 35,
              child: Card(
                color: Colors.white30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SizedBox(
                  width: 272,
                  height: 91,
                  child: Center(
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 19.27,
                        color: Colors.white,
                      ),
                    ), // Display the actual name here
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Card(
                color: Colors.white30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: SizedBox(
                  width: 92,
                  height: 55,
                  child: Column(
                    children: [
                      const Text(
                        'IMDb',
                        style: TextStyle(fontSize: 9.64, color: Colors.white),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Star.png',
                            width: 18,
                            height: 18, // Provide the correct image path here
                          ),
                          const Text('7.0')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
