import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/wallet/add-money/add-money.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../setting/setting.dart';
import '../withdraw/withdraw.dart';

class Wallets extends StatefulWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  State<Wallets> createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColors.mainColor,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: -10,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Shimmer.fromColors(
                      highlightColor: Colors.white,
                      baseColor: Colors.grey,
                      child: Image.asset("assets/image/appicon.png", height: 50, width: 50, fit: BoxFit.cover,)),
                  SizedBox(width: 5,),
                  Text("Sports Club",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: appColors.white
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
                color: Color(0xFF323860),
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

      body:  Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: width/2.3,
                      height: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF0D1B44).withOpacity(0.3),
                      ),
                      child: Column(
                        children: [
                          Text("৳4000.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18.sp,
                              fontFamily: "Nanu",
                              color: Colors.white
                            ),
                          ),
                          Text("Balance available",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp,
                                fontFamily: "Nanu",
                                color: appColors.white
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 50, bottom: 50),
                            width: width/2.2,
                            height: 3,
                            color: appColors.white,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("৳4000.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 10.sp,
                                        fontFamily: "Nanu",
                                        color: Colors.white
                                    ),
                                  ),
                                  Text("Winning Balance",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        fontFamily: "Nanu",
                                        color: appColors.white
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("৳4000.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 10.sp,
                                        fontFamily: "Nanu",
                                        color: Colors.white
                                    ),
                                  ),
                                  Text("Deposit Cash",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        fontFamily: "Nanu",
                                        color: appColors.white
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                 Container(
                                   height: 40,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Icon(
                                     Icons.more_horiz,
                                     color: Colors.blue,
                                     size: 20.sp,
                                   ),
                                 ),
                                  SizedBox(height: 5,),
                                  Text("View more",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        fontFamily: "Nanu",
                                        color: appColors.white
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //SizedBox(height: 140,),

                Container(
                  width: width/2,
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Bounce(
                            duration: Duration(milliseconds: 80),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMoney()));

                            },
                            child: Container(
                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF5D9E),
                                borderRadius: BorderRadius.circular(20),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/image/coin.png"),
                                  Text("Add Money",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        fontFamily: "Nanu",
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Bounce(
                            duration: Duration(milliseconds: 80),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Withdraw()));

                            },
                            child: Container(
                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFF8F71FF),
                                borderRadius: BorderRadius.circular(20),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/image/transfer.png"),
                                  Text("Withdraw",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        fontFamily: "Nanu",
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 30,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color(0xFF404564).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_circle_fill,
                                  color: Color(0xFFFF5D9E),
                                  size: 20.sp,
                                ),
                                SizedBox(width: 5,),
                                Text("How to add money?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                      fontFamily: "Nanu",
                                      color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xFF404564).withOpacity(0.3),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_circle_fill,
                                  color: Color(0xFFFF5D9E),
                                  size: 15.sp,
                                ),
                                SizedBox(width: 5,),
                                Text("How to Play?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                      fontFamily: "Nanu",
                                      color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),



              ],
            ),
          )
      ),
    );
  }
}
