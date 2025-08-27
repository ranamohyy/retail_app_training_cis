import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';

import '../../../widgets/categories_item.dart';
import '../../../widgets/deals_item.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});
  List<String> labels = ["Fruits", "Vegtables", "Meat", "Fish"];
  List<String> images = [
    AppImages.enabImage,
    AppImages.vagtablesImage,
    AppImages.appleImage,
    AppImages.appleImage,
  ];
  List<int> colors = [0xffEDD0FF, 0xffFFD9BA, 0xffFACCCC, 0xffFACCCC];
  List<String> fruitName = ["Apple", "Banana", "Apple", "Banana"];
  List<String> fruitImage = [
    AppImages.appleImage,
    AppImages.vagtablesImage,
    AppImages.appleImage,
    AppImages.appleImage,
  ];
  List<String> prices = ["900", "800", "700", "500"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: labels.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoriesItem(
                  label: labels[index],
                  backgroundColor: Color(colors[index]),
                  image: images[index],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: fruitName.length,
            itemBuilder: (context, index) => DealsItem(
              fruitImage: fruitImage[index],
              price: prices[index],
              fruitName: fruitName[index],
            ),
          ),
        )
      ],
    );
  }
}
