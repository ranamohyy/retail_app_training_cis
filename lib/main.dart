import 'package:flutter/material.dart';
import 'features/home_nav/screens/cart/view.dart';
import 'features/home_nav/view.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: CartScreen()
    );
  }
}





