import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double borderRadious;
  final double fontSize;
  const AppButton({Key? key, required this.text, required this.onPressed, this.borderRadious = 10, this.fontSize = 17}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: Duration(milliseconds: 100),
      onPressed: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: appColors.buttonColor,
          borderRadius: BorderRadius.circular(borderRadious),
        ),
        child: Text("$text",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Nanu",
              fontSize: fontSize.sp,
              fontWeight: FontWeight.w400,
              color: appColors.white
          ),
        ),
      ),
    );
  }
}

