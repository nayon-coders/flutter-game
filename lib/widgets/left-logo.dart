import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:shimmer/shimmer.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:sizer/sizer.dart';

class LeftLogo extends StatelessWidget {
  final String? text;
  const LeftLogo({Key? key, this.text, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Image.asset("assets/image/bg.png"),
        Positioned(
          left: width/10,
          top: height/10,
          child: Shimmer.fromColors(
              highlightColor: Colors.white,
              baseColor: Colors.grey,
              child: ShowUpAnimation(
                  delayStart: Duration(microseconds: 100),
                  animationDuration: Duration(seconds: 1),
                  curve: Curves.easeInOutBack,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: Image.asset("assets/image/appicon.png", height: 250, width: 250, fit: BoxFit.cover,))
          ),
        ),
        Positioned(
            bottom: 20,
            left: width/6,
            child: Text("$text",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appColors.white,
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
              ),
            )
        ),
      ],
    );
  }
}
