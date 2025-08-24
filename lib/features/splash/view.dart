import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
              "assets/images/shopping.png",
              height: 300,
              width: double.infinity,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome to our app",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff7F4E1D),
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Shop online and get groceries delivered from stores to your home\n in as fast as 1 hour .",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff7F4E1D),
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 51,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF5E00),
                  fixedSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Color(0xf2dc9b10), width: 2),
                  ),
                ),
                child: Text("Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ))),
            SizedBox(
              height: 16,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(300, 50),
                side: BorderSide(
                  color: Color(0xffFF5E00),
                ),
                backgroundColor: Colors.white,
              ),
              child: Text(
                "Sign in",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Color(0xffFF5E00)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
