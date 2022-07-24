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
import 'package:mboile_game/widgets/verify-popup.dart';

import 'package:sizer/sizer.dart';

import '../../home-screen/home-screen.dart';
import '../../widgets/list-tile.dart';

class VerifyShopPayments extends StatefulWidget {
  const VerifyShopPayments({Key? key}) : super(key: key);

  @override
  State<VerifyShopPayments> createState() => _VerifyShopPaymentsState();
}

class _VerifyShopPaymentsState extends State<VerifyShopPayments> {

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
          child: Container(
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/bg.png"),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                Container(
                  width: width/2,
                  height: 220,
                  child: VerifyPopUp(
                      text: "Verify",
                      onPressed: (){
                    _showPopUp();
                  }),
                )



                //TOD: Body
                // VerifyPopUp(onPressed: //_showPopUp()
                //    )
                //SizedBox(height: 140,),


              ],
            ),
          )
      ),
    );
  }
  Future<void> _showPopUp() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.blue.withOpacity(0.4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            content: Container(
              width: 100,
              height: 180,
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                    size: 120,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Your request has been send",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.sp,

                    ),
                  )
                ],
              ),
            )

        );
      },
    );
  }

}

