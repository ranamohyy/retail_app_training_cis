import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_elevated_button.dart';
import 'package:hello_flutter/core/helpers/app_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Sign Up",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 7,
              ),
              Image.asset(
                "assets/images/signUp.png",
                height: 278,
                width: 278,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Please enter your information to create an account.",
                style: TextStyle(
                    color: Color(0xff6D3805),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              AppTextField(hintText: "Name"),
              SizedBox(
                height: 8,
              ),
              AppTextField(hintText: "Email"),
              SizedBox(
                height: 8,
              ),
              AppTextField(hintText: "Password",showEyeIcon: true,),
              SizedBox(
                height: 8,
              ),
              AppTextField(hintText: "Confirm Password",showEyeIcon: true,),
              SizedBox(
                height: 29,
              ),
              AppElevatedButton(text: "Sign Up")
            ],
          ),
        ),
      ),
    );
  }
}
