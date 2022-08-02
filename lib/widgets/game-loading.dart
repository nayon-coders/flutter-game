
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:sizer/sizer.dart';

class GameLoading extends StatelessWidget {
  const GameLoading({
    Key? key,
    required this.width,
    required this.height,
    required this.controller,
  }) : super(key: key);

  final double width;
  final double height;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/bg.png"),
              ),
            ),
            child:Container(
                width: 200,
                margin: EdgeInsets.only(top: height/2.2),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Game Loading...",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: appColors.white,
                        fontSize: 20.sp,
                        fontFamily: "Nanu",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.redAccent),
                      ),
                      child: LinearProgressIndicator(
                        minHeight: 10,
                        value: controller.value,
                        color: appColors.red,
                        backgroundColor: appColors.white,

                      ),
                    ),
                  ],
                )
            )
        )
    );
  }
}