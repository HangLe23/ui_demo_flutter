import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CustomListItem(
      {super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text(title),
      ),
    );
  }
}
