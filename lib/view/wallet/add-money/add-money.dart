import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/wallet/add-money/verify.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../setting/setting.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Text("Add Money",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                fontFamily: "Nanu",
                                color: Color(0xFFFF5D9E)
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "How much money did you send?",
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
                          Container(
                            margin: EdgeInsets.only(right: 30, left: 30, bottom: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "The last 4 digits of the number",
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
                          Text("Select Payment Method",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.sp,
                                fontFamily: "Nanu",
                                color: Color(0xFFFF5D9E)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Bounce(
                                  duration: Duration(microseconds: 80),
                                  onPressed: () { 
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Veryfiy()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 7, right: 7, top: 20,bottom: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset("assets/image/bkash.png", height: 30, width: 50,  fit: BoxFit.cover, ),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Bounce(
                                  duration: Duration(microseconds: 80),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Veryfiy()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 7, right: 7, top: 20,bottom: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset("assets/image/nagod.png", height: 30, width: 50, fit: BoxFit.cover, ),
                                  ),
                                ),
                                SizedBox(width: 8,),
                                  Bounce(
                                    duration: Duration(microseconds: 80),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Veryfiy()));
                                    },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 7, right: 7, top: 20,bottom: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset("assets/image/roket.png", height: 30, width: 50, fit: BoxFit.cover, ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Text("*01635892409 (Send Money/Cash In) Minimum 10Tk",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.sp,
                                fontFamily: "Nanu",
                                color: Colors.white
                            ),
                          ),

                        ],
                      )
                  ),



                ],
              ),
            ),
          )
      ),
    );
  }
}
