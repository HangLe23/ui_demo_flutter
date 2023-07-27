import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/screen/detail_screen.dart';

class MovieItem extends StatelessWidget {
  final String imageUrl;
  final String name;

  const MovieItem({
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
        child: Column(
          children: [
            Image.asset(imageUrl),
            Text(name),
          ],
        ));
  }
}
