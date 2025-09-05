import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';
import '../../core/helpers/app_styles.dart';
import '../widgets/orders_item.dart';
class OrdersScreen extends StatelessWidget {
   OrdersScreen({super.key});
  List<String> prices = [r"$900", r"$800", r"$700", r"$500"];
  List<bool> isGreen = [true,false, true, false];
  List<String> orderNumber = ["7777", "333", "346", "345"];
  List<String> dates = ["July 26, 2017","October 14, 2016", "October 26, 2014","October 26, 2014"];
  List<String> orderStatus = ["delivered", "Cancel","delivered","Cancel"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          elevation: 0,
          scrolledUnderElevation: 0,
          bottom:PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: TabBar(
                  indicatorColor: AppColors.primaryColor,
                  indicatorWeight: 5,
                  labelStyle: AppTextStyles.kTextStyleTab.copyWith(color: AppColors.primaryColor),
                  unselectedLabelStyle: AppTextStyles.kTextStyleTab,
                  tabs: [
                Tab(text: "Ongoing",),Tab(text: "History")

              ])) ,
          leading: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.arrow_back_ios_new,
                color:AppColors.primaryColor,
              )),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Orders",
            style: AppTextStyles.kTextAppBarStyle,
          ),
        ),
        body: TabBarView(
            children: [
              ListView.builder(
                itemCount: dates.length,
                itemBuilder:(context, index) =>  OrdersItem(
                  isGreen:isGreen[index] ,
                  price: prices[index],date: dates[index],orderNumber: orderNumber[index],
                  orderStatus:orderStatus[index] ,
                ),
              ),
              ListView.builder(

                itemCount: dates.length,
                itemBuilder:(context, index) =>  OrdersItem(
                  isGreen:isGreen[index] ,

                  price: prices[index],date: dates[index],orderNumber: orderNumber[index],
                  orderStatus:orderStatus[index] ,
                ),
              ),
])


      ),
    );
  }
}
