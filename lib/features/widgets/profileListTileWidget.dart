import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/helpers/app_colors.dart';
import '../../core/helpers/app_styles.dart';
class ProfileListTileItem extends StatelessWidget {
  ProfileListTileItem({super.key,this.leadingIcon,required this.title,this.notShowSvg=true,this.assetName});
  IconData ?leadingIcon;
  String title;
  bool notShowSvg;
  String ?assetName;
  @override
  Widget build(BuildContext context) {
    return   ListTile(
      trailing:Icon(Icons.arrow_forward_ios_rounded,color: AppColors.secondColor) ,
      title:Text(title,style: AppTextStyles.kTextStyle18Profile,) ,
      leading: notShowSvg?
      Icon(leadingIcon,color: AppColors.secondColor,size: 30,):
      SvgPicture.asset(assetName!)

    );
  }
}
