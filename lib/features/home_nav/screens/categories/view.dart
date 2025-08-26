import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';

import '../../../widgets/categories_item.dart';

class CategoriesScreen extends StatelessWidget {
 const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: GridView.builder(
          itemCount:15,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 100 / 150),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoriesItem(
                  label:  "Fruit",
                  backgroundColor: Colors.blueAccent,
                  image: AppImages.enabImage,
                ),
              )),
    );
  }
}
