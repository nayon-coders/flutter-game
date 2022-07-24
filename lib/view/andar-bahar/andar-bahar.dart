import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:sizer/sizer.dart';

import 'get-start.dart';


class AndarBahar extends StatefulWidget {
  const AndarBahar({Key? key}) : super(key: key);

  @override
  State<AndarBahar> createState() => _AndarBaharState();
}

class _AndarBaharState extends State<AndarBahar> {

  bool _isStart = false;




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
        title: Text("Sports Club",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: appColors.white
          ),
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/anderbahar-nagitive.png"),
                ),
              ),
              child: Stack(
                children: [
                  SizedBox(height: 8.h,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset("assets/image/bg.png", height: 250,width: 150,),
                  ),


                  Positioned(
                    left: width/5,
                    right: width/5,
                    top: 40,

                    child: Container(
                      alignment: Alignment.center,
                      width: 400,
                      height: 250,
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/border/border.png"),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: BoardCard(),
                    ),
                  ),
                  _isStart ? Center():Positioned(
                    left: width/4.3,
                    right: width/4.3,
                    top: height/4.5,
                      child: Container(
                        width: 300,
                        height: 130,
                        child: Bounce(
                          onPressed: (){
                            _showMyDialog();
                            setState((){
                              _isStart = true;
                            });
                          },
                          duration: Duration(milliseconds: 80),
                          child: Container(
                            margin: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xFFAFADAD)
                            ),
                            child: Center(
                              child: Text("Tap to Start",
                                style: TextStyle(
                                    color: Color(0xFFE51C44),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),


                ],
              )
          )
      ),

    );
  }

  Widget BoardCard(){
    return Container(
      margin: EdgeInsets.only(left: 12.h, right: 14.h),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 37,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white.withOpacity(0.3)
                ),
              ),
              const Text("Andar",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    color: Colors.white54
                ),
              )
            ],
          ),
          Container(
            width: 50,
            height: 70,
            transform: Matrix4.translationValues(0.0, -12.0, 0.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white.withOpacity(0.3)
            ),
            child: Image.asset("assets/image/andarbaharicon.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 37,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white.withOpacity(0.3)
                ),
              ),
              Text("Bahar",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    color: Colors.white54
                ),
              )
            ],
          ),

        ],
      ),
    );
  }


  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.transparent,
            content: Center(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(

                  animatedTexts: [
                    FadeAnimatedText("1"),
                    FadeAnimatedText("2"),
                    FadeAnimatedText("3"),
                    FadeAnimatedText("LET'S GO"),
                  ],
                  totalRepeatCount: 1,
                  onFinished: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => GetStartAndarBahar()));
                  },


                ),
              ),
            )

        );
      },
    );
  }








}

//

