import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';
import 'package:hello_flutter/core/helpers/app_elevated_button.dart';
import 'package:hello_flutter/core/helpers/app_field.dart';
import 'package:hello_flutter/core/helpers/app_styles.dart';
import '../home_nav/view.dart';
import '../widgets/custom_app_bar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Sign Up",),
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
                AppImages.signUpImage,
                height: 278,
                width: 278,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Please enter your information to create an account.",
                style:AppTextStyles.kHeadText20,),
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
              AppElevatedButton(text: "Sign Up",onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeNavScreen(),));
              },)
            ],
          ),
        ),
      ),
    );
  }
}
