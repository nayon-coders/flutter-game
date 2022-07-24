import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/home-screen/home-screen.dart';
import 'package:mboile_game/view/profile/profile.dart';
import 'package:mboile_game/view/setting/help-support.dart';
import 'package:mboile_game/view/setting/rafer.dart';
import 'package:mboile_game/view/setting/shop/shop.dart';
import 'package:mboile_game/view/sign-in/sign-in.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../widgets/list-tile.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  void initState(){
    super.initState();

  }
  @override
  void dispose(){
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColors.mainColor,
      drawer: Drawer(
        child: Text("Menu"),
      ),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: -3,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            focusColor: Colors.transparent,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xFF323861),
            ),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: appColors.white,
            ),
          ),
        ),
        title: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Text("Setting",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: appColors.red
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        actions: [
          Container(
            width: 36,
            height: 30,
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 5),
            decoration: BoxDecoration(
              color: Color(0xFF323860),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: appColors.white),
            ),
            child: Icon(
              Icons.account_balance_wallet,
              color: Colors.white,
              size: 17.sp,
            ),
          ),
          Container(
            width: 36,
            height: 30,
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 5),
            decoration: BoxDecoration(
              color: Color(0xFF323860),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: appColors.white),
            ),
            child: Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 17.sp,
            ),
          ),
          Bounce(
            duration: Duration(milliseconds: 100),
            onPressed: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>Se()));
            },
            child: Container(
              width: 36,
              height: 30,
              margin: EdgeInsets.only(top: 10, bottom: 10, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: appColors.white),
              ),
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 17.sp,
              ),
            ),
          )
        ],

      ),

      body: Container(
          width: width,
          height: height,
          child: Container(
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/bg.png"),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //TODO: Left side menu bar
                Container(
                  width: width/3,
                  height: height,
                  color: Color(0xFF0C133E),
                  child: ListView(
                    children: [
                      SettingListTile(
                          title: "Refer & Earn",
                          icon: Icons.share,
                          onLongPress: (){},
                          isSelected: false,
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RaferEarn()));
                          },
                      ),
                      SettingListTile(
                        isSelected: false,
                        title: "Help And Support",
                        icon: Icons.contact_support,
                        onLongPress: (){},
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpSupport()));
                        },
                      ),
                      SettingListTile(
                        isSelected: false,
                        title: "Shop",
                        icon: Icons.notifications,
                        onLongPress: (){},
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop()));
                        },
                      ),

                      SettingListTile(
                        isSelected: false,
                        title: "Statistics",
                        icon: Icons.bar_chart,
                        onLongPress: (){},
                        onTap: (){},
                      ),

                      SettingListTile(
                        isSelected: false,
                        title: "Developers Profile",
                        icon: Icons.account_circle,
                        onLongPress: (){},
                        onTap: (){},
                      ),
                        SettingListTile(
                          isSelected: false,
                        title: "Log Out",
                        icon: Icons.logout,
                        onLongPress: (){},
                        onTap: (){},
                      ),




                    ],
                  ),
                ),

                //TOD: Body
                Container(
                  margin: EdgeInsets.only(left: 150, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No Selected Yet",
                        style: TextStyle(
                          color: appColors.white,
                          fontFamily: "Nanu",
                          fontSize: 15.sp ,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      SizedBox(height: 10,),
                      Container(height: 5,width: 100, color: Color(0xFF666666),),
                    ],
                  ),
                )
                //SizedBox(height: 140,),


              ],
            ),
          )
      ),
    );
  }
}

