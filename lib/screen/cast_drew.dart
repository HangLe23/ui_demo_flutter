import 'package:flutter/material.dart';
import 'package:ui_demo_flutter/items/cast_drew_item.dart';
import 'package:ui_demo_flutter/untils/Colors/colors.dart';

import '../untils/TextStyles/TextStyles.dart';

class CastDrewScreen extends StatefulWidget {
  const CastDrewScreen({super.key});

  @override
  State<CastDrewScreen> createState() => _CastDrewScreenState();
}

class _CastDrewScreenState extends State<CastDrewScreen> {
  List<CastDrewItem> castDrewItem = [
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
    const CastDrewItem(
      imageUrl: 'assets/images/JohnLeguizamo.png',
      name: 'John Leguizamo',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF15141f),
        appBar: AppBar(
          title: Text(
            'Cast & Drew ',
            style: TextStyles.tittle,
          ),
          backgroundColor: Colors.transparent, // Xóa màu nền của AppBar
          elevation: 0, // Xóa đổ bóng của AppBar
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
                        size: 15,
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
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.7, // Adjust this aspect ratio as needed
                ),
                itemCount: castDrewItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return CastDrewItem(
                    imageUrl: castDrewItem[index].imageUrl,
                    name: castDrewItem[index].name,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
