import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/sign-in/sign-in.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/left-logo.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
          },
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
              LeftLogo(text: "",),
              //left side logo end

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10.h, bottom: 5.h),
                width: width/2.5,
                child: Column(
                  children: [
                    Text("login and organize your games",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nanu",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                          color: appColors.white
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("to play your games favorites with your friends",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nanu",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: appColors.white
                      ),
                    ),
                    SizedBox(height: 20,),
                    Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
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
                              size: 20.sp,
                            ),
                            SizedBox(width: 10,),
                            Text("Connect with WhatsApp",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Nanu",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: appColors.white
                              ),
                            ),
                          ],
                        ),
                      ),
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
