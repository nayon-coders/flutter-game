import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/flash-screen/get-start.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> with TickerProviderStateMixin {
  late AnimationController controller;


  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: false);
    controller.forward().then((value) => {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStart())),
    });



    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  var value;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: appColors.mainColor,
        ),
        child: Column(
          children: [
            Shimmer.fromColors(
              highlightColor: Colors.white,
              baseColor: appColors.white,
              child: Container(
                color: Colors.transparent,
                width: width,
                height: height/1.2,
                child: Center(
                 child: Image.asset("assets/image/appicon.png", height: 200, width: 200, fit: BoxFit.cover,),
                ),
              ),
            ),

            Container(
              width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  children: [
                    Text("Processing...",
                      style: TextStyle(
                        color: appColors.white,
                        fontSize: 10.sp,
                        fontFamily: "Nanu",
                      ),
                    ),
                    LinearProgressIndicator(
                      minHeight: 10,
                      value: controller.value,
                      color: appColors.red,
                      backgroundColor: appColors.white,
                    ),
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}

