import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:mboile_game/widgets/alert.dart';
import 'package:mboile_game/widgets/verify-popup.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../setting/setting.dart';

class WithdrawVerify extends StatefulWidget {
  const WithdrawVerify({Key? key}) : super(key: key);

  @override
  State<WithdrawVerify> createState() => _WithdrawVerifyState();
}

class _WithdrawVerifyState extends State<WithdrawVerify> {
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
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  //SizedBox(height: 140,),

                  //TODO:Right Side
                  SizedBox(
                      width: width/2,
                      child: VerifyPopUp(
                          text: "Withdraw",
                          onPressed: (){
                            _showPopUp();
                          }
                      )
                  ),



                ],
              ),
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
