import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/online-game/Matchs/ongoing.dart';
import 'package:mboile_game/view/online-game/Matchs/paly.dart';
import 'package:mboile_game/view/online-game/Matchs/result.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../Turnaments.dart';


class MatchList extends StatefulWidget {
  const MatchList({Key? key}) : super(key: key);

  @override
  State<MatchList> createState() => _MatchListState();
}

class _MatchListState extends State<MatchList> {
  @override
  void initState(){
    super.initState();

  }
  @override
  void dispose(){
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Text("Online Tournaments ",
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

        body: SizedBox(
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

                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      height: 50,
                      width: width/2,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10)
                      ),

                      child: TabBar(
                        indicatorColor: Colors.white,
                        labelColor: Colors.white,
                        labelStyle: TextStyle(
                          fontSize: 14.sp
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontSize: 11.sp
                        ),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.5),
                        ),

                        tabs: [
                          Tab(text: "On Going",),
                          Tab(text: "Play",),
                          Tab(text: "Result",),
                        ],
                      ),
                    ),

                    const Expanded(
                      child:  TabBarView(
                        physics: ScrollPhysics(
                            parent: ScrollPhysics()
                        ),
                        children: [
                          OnGoingMatch(),
                          PlayMatch(),
                          Result(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }

}

