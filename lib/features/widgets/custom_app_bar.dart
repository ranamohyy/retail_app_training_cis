import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';
import '../../core/helpers/app_styles.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
   CustomAppBar({super.key,
     required this.title,this.showBackButton=true,this.bottom,
     this.isNormalHeight=true});
String title;
bool showBackButton;

bool isNormalHeight;
PreferredSizeWidget? bottom ;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom:bottom,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading:showBackButton? GestureDetector(
          onTap: () {Navigator.pop(context);},
          child: Icon(
            Icons.arrow_back_ios_new,
            color:AppColors.primaryColor,
          )):SizedBox.shrink(),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
       title,
        style: AppTextStyles.kTextAppBarStyle,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(isNormalHeight?56:130);
}
