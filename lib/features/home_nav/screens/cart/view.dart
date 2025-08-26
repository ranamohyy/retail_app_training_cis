import 'package:flutter/material.dart';

import '../../../widgets/cart_item.dart';
class CartScreen extends StatelessWidget {
   CartScreen({super.key});
  List<String>fruitName=["Apple","Banana", "Avogado","Salamon"];
  List<String>fruitImage=["assets/images/apple.png",
    "assets/images/vagtables.png",
    "assets/images/apple.png",
    "assets/images/vagtables.png"];
  List<String>prices=[r"$900",r"$800",r"$700",r"$500"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xffFF5E00),
          ),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) =>CartItem(
            fruitName: fruitName[index],
            fruitImage:fruitImage[index] ,
            fruitPrice:prices[index] ,
          ),
          itemCount: prices.length),

    );
  }
}
