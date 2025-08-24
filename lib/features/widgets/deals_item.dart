import 'package:flutter/material.dart';

class DealsItem extends StatelessWidget {
  DealsItem(
      {super.key,
      required this.price,
      required this.fruitImage,
      required this.fruitName});
  String fruitImage;
  String fruitName;
  String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 150,
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              fruitImage,
            ),
          ),
          Text(
            fruitName,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff6D3805)),
          ),
          Text(
            "1 kg",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff929292)),
          ),
          Row(
            children: [
              Text(
                price,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF5E00)),
              ),
              Spacer(),
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
