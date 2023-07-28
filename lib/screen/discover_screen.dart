import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/untils/TextStyles/TextStyles.dart';

import '../items/movie_item.dart';
import '../untils/Colors/colors.dart';

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
        title: Text(
          'Find Movies, Tv series, and more..',
          style: TextStyles.tittle,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          TextField(
            enabled: true,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'Search your destination',
              hintStyle: TextStyles.hintSearch,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 14,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    24,
                  ),
                ),
              ),
            ),
            onChanged: (value) {},
            onSubmitted: (String submitValue) {},
          ),
          Row(
            children: [
              Text(
                'Moview',
                style: TextStyles.selected,
              ),
              const Spacer(),
              Text(
                'TV Series',
                style: TextStyles.lato400Size19,
              ),
              const Spacer(),
              Text('Documentary', style: TextStyles.lato400Size19),
              const Spacer(),
              Text('Sports', style: TextStyles.lato400Size19),
              const Spacer(),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(4),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 0.7, // Adjust this aspect ratio as needed
              ),
              itemCount: movieData.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieItem(
                  imageUrl: movieData[index].imageUrl,
                  name: movieData[index].name,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
