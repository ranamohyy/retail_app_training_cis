
import 'package:flutter/material.dart';
import 'package:hello_flutter/features/widgets/counter.dart';
class CartItem extends StatelessWidget {
   CartItem({super.key,required this.fruitImage,required this.fruitName,required this.fruitPrice});
  String fruitImage;
  String fruitName;
  String fruitPrice;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: UniqueKey(),
      background: Container(
        alignment: Alignment.centerRight,
        color: Colors.red,
        child: Icon(Icons.delete,color: Colors.white,size: 50,),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.only(left: 34,right: 34),
            child: Row(
              spacing: 18,
              children: [
                Expanded(
                    child: Image.asset(fruitImage)),
                Expanded(
                  flex: 4,
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    Text(fruitName,
                      style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Counter(),
                      Text(
                       fruitPrice,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                    ],)

                  ],),
                )

              ],

            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
