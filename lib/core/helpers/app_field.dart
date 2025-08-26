import 'package:flutter/material.dart';
class AppTextField extends StatelessWidget {
   AppTextField({super.key,required this.hintText,this.showEyeIcon=false});
String hintText;
bool ?showEyeIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: showEyeIcon==false?
          SizedBox.shrink()
              :
          Icon(
            Icons.visibility_outlined,
            color: Colors.orange,
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText:hintText ,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Color(0xffF3F3F3),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Color(0xffF3F3F3),
              ))),
    );
  }
}
