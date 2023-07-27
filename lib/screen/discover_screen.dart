import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';

import '../items/movie_item.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MovieItem> movieData = [
      const MovieItem(
        imageUrl: 'assets/images/TheLastJedi.png',
        name: 'Star Wars: The Last Jedi',
      ),
      const MovieItem(
        imageUrl: 'assets/images/movie1.png',
        name: 'Soul',
      ),
      const MovieItem(
        imageUrl: 'assets/images/movie2.png',
        name: 'Movie 2',
      )
    ];

    return Scaffold(
      backgroundColor: CustomColors.backgroudcolor,
      appBar: AppBar(
        title: const Text(
          'Find Movies, Tv series, and more..',
          style: TextStyle(fontSize: 28.91, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(4),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          mainAxisExtent: 300,
        ),
        itemCount: movieData.length,
        itemBuilder: (BuildContext context, int index) {
          return MovieItem(
            imageUrl: movieData[index].imageUrl,
            name: movieData[index].name,
          );
        },
      ),
    );
  }
}
