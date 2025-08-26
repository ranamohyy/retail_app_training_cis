import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  CategoriesItem(
      {super.key,
      required this.label,
      required this.backgroundColor,
      required this.image});
  String label;
  Color backgroundColor;
  String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: backgroundColor,
          child: Image.asset(image),
        ),
        Text(label)
      ],
    );
  }
}
