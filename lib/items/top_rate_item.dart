import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/TextStyles/TextStyles.dart';

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
              left: 20,
              child: Card(
                color: Colors.white30,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SizedBox(
                  width: 272,
                  height: 91,
                  child: Center(
                    child: Text(name,
                        style: TextStyles
                            .lato400Size19), // Display the actual name here
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
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'IMDb',
                        style: TextStyles.IMDb,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/images/Star.png',
                            width: 18,
                            height: 18, // Provide the correct image path here
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '7.0',
                            style: TextStyles.lato400Size19,
                          )
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
