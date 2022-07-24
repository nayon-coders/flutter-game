import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/profile/profile.dart';
import 'package:mboile_game/view/setting/developer.dart';
import 'package:mboile_game/view/setting/rafer.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/setting/shop/shop.dart';
import 'package:mboile_game/view/setting/shop/verify-shop-payment.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';

import 'package:sizer/sizer.dart';

import '../../home-screen/home-screen.dart';
import '../../widgets/list-tile.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {

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
                        isSelected: false,
                        title: "Help And Support",
                        icon: Icons.contact_support,
                        onLongPress: (){
                        },
                        onTap: (){},
                      ),
                      SettingListTile(
                        isSelected: true,
                        title: "Shop",
                        icon: Icons.notifications,
                        onLongPress: (){},
                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop()));
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

                  height: height,
                  width: width/1.7,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                  child: ListView(
                    children: [


                      Container(
                        width: width/1.7,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF979797).withOpacity(0.3),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop()));
                                  },
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 2, color: Colors.red),
                                        )
                                    ),
                                    child: Text("Chart",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                        color: appColors.red,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,),
                                InkWell(
                                  onTap: (){
                                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Payments()));
                                  },
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 2, color: Colors.red),
                                        )
                                    ),
                                    child: Text("Payments",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 3, bottom: 3, left: 5, right: 5),
                                  margin: EdgeInsets.only(left: 40, right: 20, bottom: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      Text("CodeCell",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 7,),
                                      Text("Test",
                                        style: TextStyle(
                                          color: Color(0xFF9098B1),
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Text("02",
                                        style: TextStyle(
                                          color: Color(0xFF9098B1),
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      SizedBox(height: 5,),
                                      Text("\$23",
                                        style: TextStyle(
                                          color: Color(0xFF81AA66),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  child: Column(
                                    children: [
                                      Text("Select Payment Method",
                                        style: TextStyle(
                                          color: Color(0xFFFF5D9E),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                      SizedBox(height: 10,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 7, right: 7, top: 20,bottom: 20),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Image.asset("assets/image/bkash.png", height: 30, width: 50,  fit: BoxFit.cover, ),
                                          ),
                                          SizedBox(width: 8,),
                                          Container(
                                            padding: EdgeInsets.only(left: 7, right: 7, top: 20,bottom: 20),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Image.asset("assets/image/nagod.png", height: 30, width: 50, fit: BoxFit.cover, ),
                                          ),
                                          SizedBox(width: 8,),
                                          Container(
                                            padding: EdgeInsets.only(left: 7, right: 7, top: 20,bottom: 20),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Image.asset("assets/image/roket.png", height: 30, width: 50, fit: BoxFit.cover, ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 20,),

                                      Container(
                                        width:220,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "Amount",
                                            hintStyle: TextStyle(
                                              color: appColors.white,
                                            ),
                                            isDense: true,
                                            filled: true,
                                            fillColor: appColors.grey,
                                            contentPadding: EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.circular(100),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(100),
                                                borderSide: BorderSide.none
                                            ),

                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width:220,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "Last 4 digit ",
                                            hintStyle: TextStyle(
                                              color: appColors.white,
                                            ),
                                            isDense: true,
                                            filled: true,
                                            fillColor: appColors.grey,
                                            contentPadding: EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.circular(100),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(100),
                                                borderSide: BorderSide.none
                                            ),

                                          ),
                                        ),
                                      ),

                                      Bounce(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyShopPayments()));
                                        },
                                        duration: Duration(microseconds: 80),
                                        child: Container(
                                          margin: EdgeInsets.only(top: 20, bottom: 20),
                                          padding: EdgeInsets.only(left: 10, right: 10),
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: appColors.red,
                                            borderRadius: BorderRadius.circular(50),

                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.delete_outline_outlined,
                                                color: Colors.white,
                                                size: 15.sp,
                                              ),
                                              SizedBox(width: 10,),
                                              Text("Next",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )


                                    ],
                                  ),

                                )
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

