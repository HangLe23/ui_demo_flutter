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
        imageUrl: 'assets/images/Soul.png',
        name: 'Soul (2020)',
      ),
      const MovieItem(
        imageUrl: 'assets/images/KnivesOut.png',
        name: 'Knives Out (2019)',
      ),
      const MovieItem(
        imageUrl: 'assets/images/Onward.png',
        name: 'Onward (2020)',
      ),
      const MovieItem(
        imageUrl: 'assets/images/JohnLeguizamo.png',
        name: 'Mu (2020)',
      ),
      const MovieItem(
        imageUrl: 'assets/images/HarleyQuinn.png',
        name: 'Harley Quinn',
      ),
      const MovieItem(
        imageUrl: 'assets/images/movies.png',
        name: 'Movies',
      ),
    ];

    return Scaffold(
      backgroundColor: CustomColors.backgroudcolor,
      appBar: AppBar(
        title: Text(
          'Find Movies, Tv series, and more..',
          style: TextStyles.tittle,
          softWrap: true,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: TextField(
                enabled: true,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: 'Search ',
                  hintStyle: TextStyles.hintSearch,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: CustomColors.hintSearch,
                      size: 14,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white30,
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
              )),
              const SizedBox(
                width: 20,
              )
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
                'Movies',
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
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 30,
                height: 1,
                color: CustomColors.selected,
                margin: const EdgeInsets.all(5),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
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
