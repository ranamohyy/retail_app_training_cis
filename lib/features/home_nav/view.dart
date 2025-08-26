import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_flutter/features/home_nav/screens/cart/view.dart';
import 'package:hello_flutter/features/home_nav/screens/categories/view.dart';
import 'package:hello_flutter/features/home_nav/screens/favorite/view.dart';
import 'package:hello_flutter/features/home_nav/screens/home_page/view.dart';
import 'package:hello_flutter/features/home_nav/screens/profile/view.dart';
class HomeNavScreen extends StatefulWidget {
  HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  int currentIndex=0;

  List<Widget>screens=[
    HomePageScreen(),
    CategoriesScreen(),
    ProfileScreen(),
    FavoriteScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
          border: Border.all(color: Colors.white,width: 4)
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex=value;
            });
          },
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Color(0xff6D3805),
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedFontSize: 16,
            unselectedFontSize: 12,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/home.svg",
                color: currentIndex==0?Colors.orange:Color(0xff6D3805),
                ),
                label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search"
              ), BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile"
              ), BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorite"
              ), BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: "Cart"
              ),

            ]),
      ),
      body:screens[currentIndex]
    );
  }
}
