import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/profile/profile.dart';
import 'package:mboile_game/view/setting/developer.dart';
import 'package:mboile_game/view/setting/rafer.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/setting/shop/shop.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';


import 'package:sizer/sizer.dart';

import '../home-screen/home-screen.dart';
import '../widgets/list-tile.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {

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
          Bounce(
            duration: Duration(milliseconds: 100),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallets()));
            },
            child: Container(
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
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
                        isSelected: true,
                        title: "Help And Support",
                        icon: Icons.contact_support,
                        onLongPress: (){
                        },
                        onTap: (){},
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
                        onLongPress: (){
                        },
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Developer()));
                        },
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
                  margin: EdgeInsets.only(left: 20, right: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Container(
                        height: 180,
                        width: 350,
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF979797).withOpacity(0.3),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text("To More Connecting  with us Plesce join with us", style: TextStyle(
                                color: appColors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 11.sp
                            ),),
                            SizedBox(height: 10,),


                            SizedBox(height: 20,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               ClipOval(
                                 child:Image.asset("assets/image/facebook.png", height: 50, width: 50, fit: BoxFit.cover,),
                               ),
                                SizedBox(width: 10,),
                                ClipOval(
                                  child:Image.asset("assets/image/discourd.png", height: 50, width: 50, fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 10,),
                                ClipOval(
                                  child:Image.asset("assets/image/talegram.png", height: 50, width: 50, fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 10,),
                                ClipOval(
                                  child:Image.asset("assets/image/youtube.png", height: 50, width: 50, fit: BoxFit.cover,),
                                ),


                                SizedBox(width: 10,),
                              ],
                            )


                          ],
                        ),
                      )

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

