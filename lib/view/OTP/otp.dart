import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/home-screen/home-screen.dart';
import 'package:mboile_game/view/sign-in/sign-in.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/button.dart';
import '../../widgets/left-logo.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {



  @override
  void initState(){
    super.initState();
    startTimer();
  }
  //TODO: Timer count down sunction
  late Timer _timer;
  int _start = 60;
  var _reSend;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _reSend = "Resend Code";
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 0, right: 30, top: 30, bottom: 30),
          width: width,
          height: height,
          color: appColors.mainColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //TODO: Left site design

              // Left side logo
              LeftLogo(text: "Please submit to continue",),
              //left side logo end

              Container(
                margin: EdgeInsets.only(top: 9.h, bottom: 5.h),
                width: width/2.5,
                child: Column(
                  children: [
                    Text("Code has been send to + ******99",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nanu",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: appColors.white
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                        padding: EdgeInsets.only(left: 30, right: 30),
                      child: OtpTextField(
                        numberOfFields: 4,
                        filled: true,
                        fieldWidth: 50,
                        fillColor: appColors.white,
                        borderColor: Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content: Text('Code entered is $verificationCode'),
                                );
                              }
                          );
                        }, // end onSubmit
                      ),
                    ),


                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Resend code in ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: appColors.white
                                  )
                              ),
                              TextSpan(
                                  text: _reSend == null ? "$_start":_reSend,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(0xFF597CF8)
                                  )
                              ),
                              TextSpan(
                                  text: " s",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: appColors.white
                                  )
                              ),
                            ]
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    AppButton(
                      text: 'Continue',
                      onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },

                    )
                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
