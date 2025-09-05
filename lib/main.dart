import 'package:flutter/material.dart';
import 'package:hello_flutter/features/on_boarding/view.dart';
import 'features/home_nav/screens/cart/view.dart';
import 'features/home_nav/screens/profile/view.dart';
import 'features/home_nav/view.dart';
import 'features/orders/view.dart';
import 'features/sign_in/view.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: OnBoardingScreen()
    );
  }
}





