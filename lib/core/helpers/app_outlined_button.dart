import 'package:flutter/material.dart';
class AppOutlinedButton extends StatelessWidget {
   AppOutlinedButton({super.key,required this.text});
String text;
  @override
  Widget build(BuildContext context) {
    return   OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        fixedSize: Size(300, 50),
        side: BorderSide(
          color: Color(0xffFF5E00),
        ),
        backgroundColor: Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: Color(0xffFF5E00)),
      ),
    );
  }
}
