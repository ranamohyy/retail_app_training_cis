import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';
import 'package:hello_flutter/core/helpers/app_colors.dart';
import 'package:hello_flutter/core/helpers/app_elevated_button.dart';
import 'package:hello_flutter/core/helpers/app_field.dart';
import 'package:hello_flutter/core/helpers/app_styles.dart';

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
              color:AppColors.primaryColor,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign In ",
          style: AppTextStyles.kTextAppBarStyle,
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
                AppImages.signInImage,
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
                style: AppTextStyles.kTextStyle20SecondPrimary,
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
                style:AppTextStyles.kTextStyle16pPrimary,
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
                    style:AppTextStyles.kTextStyle16SecondPrimary,
                  ),
                  Text(
                    "Sign Up",
                    style:AppTextStyles.kTextStyle16pPrimary,
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
