import 'package:flutter/material.dart';
class AppElevatedButton extends StatelessWidget {
   AppElevatedButton({super.key,required this.text});
String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF5E00),
        fixedSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
       text ,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
    );

  }
}
