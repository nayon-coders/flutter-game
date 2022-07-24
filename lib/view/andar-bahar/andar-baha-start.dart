import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/andar-bahar/andar-baha-start.dart';
import 'package:mboile_game/view/andar-bahar/get-start.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:sizer/sizer.dart';


class AndarBaharStartTime extends StatefulWidget {
  const AndarBaharStartTime({Key? key}) : super(key: key);

  @override
  State<AndarBaharStartTime> createState() => _AndarBaharStartTimeState();
}

class _AndarBaharStartTimeState extends State<AndarBaharStartTime> {

  @override
  void initState(){
    super.initState();
    startTimer();
  }
  bool _isGo = false;
  //TODO: Timer count down sunction
  late Timer _timer;
  int _start = 3;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            setState((){
              _isGo = true;
              //_showMyDialog();
            });

          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }
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
                    left: width/4.3,
                    top: height/8,
                    child: Container(
                      alignment: Alignment.center,
                      width: 400,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 10, color: Color(0xFFAFADAD)
                        ),
                      ),
                      child: Container(
                        width: 300,
                        height: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/image/ambarbaharbox.png", ),
                            )
                        ),
                        child: Padding(

                          padding: EdgeInsets.only(left: 40, right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 58,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white.withOpacity(0.3)
                                    ),
                                  ),
                                  Text("Andar",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 10,
                                        color: Colors.white54
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: 40,
                                height: 60,
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
                                    width: 40,
                                    height: 58,
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
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width/4.3,
                    right: width/4.3,
                    top: height/4.5,
                    child: Container(
                      width: 400,
                      height: 130,
                      child: _isGo ? Center(): Bounce(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AndarBaharStartTime()));
                        },
                        duration: Duration(milliseconds: 80),
                        child: Container(
                          margin: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFAFADAD)
                          ),
                          child: Center(
                            child: Text("Start in $_start’s",
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
                  Positioned(
                      left: width/2.2,
                      right: width/2.2,
                      top: 30,
                      child: Image.asset("assets/image/andarbahar-tabel.png",height: 70, width: 70,)
                  ),


                ],
              )
          )
      ),

    );
  }







}

//

