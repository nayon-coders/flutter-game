import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/gradient-text.dart';
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
                    left: width/10,
                    top: 50,
                    right: width/10,
                    child:  Container(
                      alignment: Alignment.center,
                      width: 450,
                      height: 350,
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/border/board.png"),
                              fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: BoardCard(width, height),
                    ),
                  ),
                  _isStart ? Center():Positioned(
                    left: width/4.3,
                    right: width/4.3,
                    top: height/3,
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


  Widget BoardCard(double width, double height){
    return Container(
      margin: EdgeInsets.only(left: width/5.7, right: width/5.8, bottom: 10),
      transform: Matrix4.translationValues(0.0, -22.0, 0.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 92,
            height: 82,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(100),
            //       bottomLeft: Radius.circular(100)
            //   ),
            //   border: SelectItemForBit.isNotEmpty &&
            //       SelectItemForBit[0] == "1" ?
            //   Border.all(width: 5, color: Color(0xFF088C25))
            //       : Border.all(width: 0, color: Colors.transparent),
            // ),
            child: Center(
                child: GradientText(

                  "Andar\n1:2",
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFA5C0AB),
                      ]),
                )
            ),
          ),

          Container(
            width: 118,
            height: 89,
            margin: EdgeInsets.only(left: 5, right: 5),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.3)
                      ),
                    ),
                    Text("Andar",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          color: Color(0xFF141F48).withOpacity(0.5)
                      ),
                    )
                  ],
                ),
                Container(
                  width: 40,
                  height: 55,
                  transform: Matrix4.translationValues(0.0, -8.0, 0.0),
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
                      width: 30,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.3)
                      ),
                    ),
                    Text("Bahar",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          color: Color(0xFF141F48).withOpacity(0.5)
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),

          Container(
            width: 94,
            height: 82,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.only(
            //       topRight: Radius.circular(100),
            //       bottomRight: Radius.circular(100)
            //   ),
            //   border: SelectItemForBit.isNotEmpty &&
            //       SelectItemForBit[0] == "3" ?
            //   Border.all(width: 5, color: Color(0xFF16343B))
            //       : Border.all(width: 0, color: Colors.transparent),
            // ),
            child: Center(
                child: GradientText(

                  "Bahar\n1:2",
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFA5C0AB),
                      ]),
                )
            ),
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
          elevation: 0,

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

