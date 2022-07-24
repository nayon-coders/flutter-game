import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:sizer/sizer.dart';

class NoData extends StatelessWidget {
  const NoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "No Selected Yet",
        style: TextStyle(
          color: appColors.white,
          fontFamily: "Nanu",
          fontSize: 18.sp ,
          fontWeight: FontWeight.bold,
        ),

      ),
    );
  }
}
