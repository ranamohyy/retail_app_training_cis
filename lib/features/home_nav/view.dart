import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/categories_item.dart';
import '../widgets/deals_item.dart';
class HomeNavScreen extends StatelessWidget {
  HomeNavScreen({super.key});
  List<String>labels=["Fruits","Vegtables", "Meat","Fish"];
  List<String>images=["assets/images/enabbb.png","assets/images/vagtables.png","assets/images/vagtables.png","assets/images/vagtables.png"];
  List<int>colors=[0xffEDD0FF,0xffFFD9BA,0xffFACCCC,0xffFACCCC];
  List<String>fruitName=["Apple","Banana", "Apple","Banana"];
  List<String>fruitImage=["assets/images/apple.png","assets/images/vagtables.png","assets/images/apple.png","assets/images/vagtables.png"];
  List<String>prices=["900","800","700","500"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.red,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 18,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/home.svg"),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"
            ), BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ), BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite"
            ), BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart"
            ),

          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         SizedBox(
           height: 200,
           child: ListView.builder(
               itemCount: labels.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CategoriesItem(label: labels[index],
                backgroundColor: Color(colors[index]),
                image: images[index],),
            );},),),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fruitName.length,
              itemBuilder:(context, index) =>
                DealsItem(fruitImage: fruitImage[index],price:prices[index],fruitName: fruitName[index],),



            ),
          )
        ],
      )
    );
  }
}
