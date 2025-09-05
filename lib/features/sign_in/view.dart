import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';
import 'package:hello_flutter/core/helpers/app_elevated_button.dart';
import 'package:hello_flutter/core/helpers/app_field.dart';
import 'package:hello_flutter/core/helpers/app_styles.dart';
import 'package:hello_flutter/features/home_nav/view.dart';
import 'package:hello_flutter/features/sign_up/view.dart';

import '../widgets/custom_app_bar.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title:  "Sign In ",),
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
              AppElevatedButton(text: "Sign In",
              onPressed:()=> Navigator.push(context,MaterialPageRoute(builder:
              (context) => HomeNavScreen(),)),
              ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                    },
                    child: Text(
                      "Sign Up",
                      style:AppTextStyles.kTextStyle16pPrimary,
                    ),
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
