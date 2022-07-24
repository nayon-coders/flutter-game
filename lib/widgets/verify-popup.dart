import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:sizer/sizer.dart';


class VerifyPopUp extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const VerifyPopUp({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            const Color(0xFFC717AD),
            const Color(0xFFFE87AF),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Balance",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: appColors.white,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("৳2000.00",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Image.asset("assets/image/bkash.png",
                height: 70,
                width: 70,
                fit: BoxFit.contain,
              )
            ],
          ),
          SizedBox(height: 10,),
          Text("01111111111",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5,),
          Text("Before Withdraw, please confirm.",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 10.sp,
              color: appColors.white,
            ),
          ),
          SizedBox(height:20,),

          Bounce(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFD53765),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text("$text",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              duration: Duration(microseconds: 80),
              onPressed: onPressed,
          )

        ],
      ),
    );
  }
}
