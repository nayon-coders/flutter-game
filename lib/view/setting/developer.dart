import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/home-screen/home-screen.dart';
import 'package:mboile_game/view/profile/profile.dart';
import 'package:mboile_game/view/setting/rafer.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/setting/shop/shop.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';

import 'package:sizer/sizer.dart';

import '../widgets/list-tile.dart';

class Developer extends StatefulWidget {
  const Developer({Key? key}) : super(key: key);

  @override
  State<Developer> createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {

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
        child: Center(child: Text("Working pgress ")),
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
                        isSelected: false,
                        title: "Help And Support",
                        icon: Icons.contact_support,
                        onLongPress: (){},
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
                        isSelected: true,
                        title: "Developers Profile",
                        icon: Icons.account_circle,
                        onLongPress: (){},

                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Developer()));
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
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/codecelllogo.png", height: 50, fit: BoxFit.cover),
                            SizedBox(height: 30,),
                            Text("A Software Development Company with a focus on turnkey solutions that Drive Digital Transformation. Empowered By Intelligence & Innovation, Driven By Values.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: appColors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 11.sp
                            ),),
                            SizedBox(height: 40,),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Bounce(
                                duration: Duration(milliseconds: 100),
                                onPressed: (){
                                },
                                child: Container(
                                  width: 180,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: appColors.buttonColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.whatsapp,
                                        color: appColors.white,
                                        size: 13.sp,
                                      ),
                                      SizedBox(width: 5,),
                                      Text("Connect with WhatsApp",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Nanu",
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w600,
                                            color: appColors.white
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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

