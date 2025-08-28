import 'package:flutter/material.dart';
import '../../core/helpers/app_colors.dart';
import '../../core/helpers/app_styles.dart';

class OrdersItem extends StatelessWidget {
  OrdersItem(
      {super.key,
      required this.price,
        this.isGreen=true,
      required this.date,
      required this.orderNumber,
      required this.orderStatus});
  String price;
  String orderStatus;
  String date;
  String orderNumber;
  bool isGreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: ListTile(
            trailing: Text(price, style: AppTextStyles.kTextStyle20bold),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text(
              "Order #$orderNumber",
              style: AppTextStyles.kTextStyle18secondColor
                ,
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderStatus,
                  style:isGreen? AppTextStyles.kHeadText14green:AppTextStyles.kHeadText14Red,
                ),
                Text(
                  date,
                  style: AppTextStyles.kTextStyle16SecondPrimary
                      .copyWith(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
