import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_flutter/core/helpers/app_assets.dart';
import '../../../../core/helpers/app_colors.dart';
import '../../../../core/helpers/app_styles.dart';
import '../../../widgets/profileListTileWidget.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitchChecked=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios_new,
              color:AppColors.primaryColor,
            )),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Profile",
          style: AppTextStyles.kTextAppBarStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileListTileItem(
              title:"Edit Profile" ,
              leadingIcon: Icons.person,
            ),
            ProfileListTileItem(
              title:"Change Password" ,
              notShowSvg:false ,
               assetName: AppImages.keySvg,
            ),
            ProfileListTileItem(
              title:"My Cards" ,
              notShowSvg: false,
              assetName: AppImages.cartSvg,

            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("App Setting",
                style: AppTextStyles.kTextStyle16pPrimary.copyWith(fontSize: 25,fontWeight: FontWeight.w700),),
            ),
            // SwitchListTile(
            //   title: Text("Notifications"),
            //     secondary: Icon(Icons.notifications),
            //     activeTrackColor: AppColors.primaryColor,
            //     inactiveTrackColor: AppColors.greyColor,
            //     value: isSwitchChecked,
            //     onChanged: (value) {
            //     setState(() {
            //       isSwitchChecked=value;
            //     });
            //     },),
            ListTile(
              title: Text("Language",style: AppTextStyles.kTextStyle18Profile,),
              leading: Icon(Icons.language),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("English",style: AppTextStyles.kTextStyle16SecondPrimary.copyWith(fontWeight: FontWeight.w400),),
                  Icon(Icons.arrow_forward_ios_rounded,color: AppColors.secondColor)

                ],
              ),

            ),
            ListTile(
              title: Text("LogOut",style: AppTextStyles.kTextStyle18Profile,),
              leading:SvgPicture.asset(AppImages.logOutSvg),

            )


        ],),
      ),

    );
  }
}
