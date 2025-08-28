import 'package:flutter/material.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';
import 'package:hello_flutter/core/helpers/app_elevated_button.dart';
import 'package:hello_flutter/core/helpers/app_styles.dart';
import '../../core/helpers/app_outlined_button.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              AppImages.onBoardingImage,
              height: 300,
              width: double.infinity,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome to our app",
              textAlign: TextAlign.center,
              style: AppTextStyles.kHeadText20,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Shop online and get groceries delivered from stores to your home\n in as fast as 1 hour .",
              textAlign: TextAlign.center,
              style:AppTextStyles.kHeadText20.copyWith(fontSize: 18)
            ),
            SizedBox(
              height: 51,
            ),
            AppElevatedButton(text: "Sign Up"),
            SizedBox(
              height: 16,
            ),
            AppOutlinedButton(text: "Sign in",),

          ],
        ),
      ),
    );
  }
}
