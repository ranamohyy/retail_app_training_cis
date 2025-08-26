import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_elevated_button.dart';
import 'package:hello_flutter/core/helpers/app_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xffFF5E00),
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign In ",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xffFF5E00)),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/login.png",
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Enter your Email and \n password to access your account",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff7F4E1D),
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              AppTextField(hintText: "Email",),
              SizedBox(
                height: 16,
              ),
              AppTextField(hintText: "Password",showEyeIcon: true,),
              SizedBox(
                height: 16,
              ),
              Text(
                "Forget Password",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFF5E00)),
              ),
              SizedBox(
                height: 16,
              ),
              AppElevatedButton(text: "Sign In"),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7F4E1D)),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFF5E00)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
