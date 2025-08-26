import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';
import 'package:hello_flutter/core/helpers/app_elevated_button.dart';

import '../../../widgets/cart_item.dart';
class CartScreen extends StatelessWidget {
   CartScreen({super.key});
  List<String>fruitName=["Apple","Banana", "Avogado","Salamon"];
  List<String>fruitImage=[
    AppImages.appleImage,
    AppImages.vagtablesImage,
   AppImages.appleImage,
    AppImages.vagtablesImage,
  ];
  List<String>prices=[r"$900",r"$800",r"$700",r"$500"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.grey.shade200,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemBuilder: (context, index) =>CartItem(
                fruitName: fruitName[index],
                fruitImage:fruitImage[index] ,
                fruitPrice:prices[index] ,
              ),
              itemCount: prices.length),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: AppElevatedButton(text: 'CheckOut',),
          )
     ] ),

    );
  }
}
