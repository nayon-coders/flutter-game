import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/spring-game/spin-game.dart';
import 'package:mboile_game/view/spring-game/widget/sprin.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../home-screen/home-screen.dart';

class OnlineSpringGameLoading extends StatefulWidget {
  const OnlineSpringGameLoading({Key? key}) : super(key: key);

  @override
  State<OnlineSpringGameLoading> createState() => _OnlineSpringGameLoadingState();
}

class _OnlineSpringGameLoadingState extends State<OnlineSpringGameLoading> with TickerProviderStateMixin {
  late AnimationController controller;


  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )
      ..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    controller.forward().then((value) =>
    {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnlineSpringGame())),
    });
    super.initState();
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
        automaticallyImplyLeading: false,
        title:Container(
          padding: EdgeInsets.only(left: 10, right: 7, top: 7, bottom: 7),
          width: 212,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFD30830),
                  Color(0xFF790C09),
                ],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
              color: appColors.red
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFE51C44),
                      Color(0xFFB93532),
                    ],
                  ),
                ),
                child: Bounce(
                  duration: Duration(milliseconds: 100),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Text("Spring Game",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
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

      body: Container(
          width: width,
          height: height,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/bg.png"),
                )
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 10),
              child: Column(
                children: [

                  Image.asset("assets/image/sniper.png", height: 250,),
                  SpinKitThreeBounce(
                    color:Colors.white,size: 30,
                    duration: Duration(milliseconds: 1000),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }

}

