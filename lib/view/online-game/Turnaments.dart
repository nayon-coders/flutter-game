import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/home-screen/home-screen.dart';
import 'package:mboile_game/view/online-game/online-game-list.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';


class TournamentList extends StatefulWidget {
  const TournamentList({Key? key}) : super(key: key);

  @override
  State<TournamentList> createState() => _TournamentListState();
}

class _TournamentListState extends State<TournamentList> {
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

      body: Container(
          width: width,
          height: height,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/bg.png"),
                )
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OnlineTournament()));
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(

                              ),
                              child: Center(
                                child: Text("Daily Match",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TournamentList()));
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/image/bg-rect.png"),
                                  )
                              ),
                              child: Center(
                                child: Text("Tournaments",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  Expanded(
                      child: ListView(
                        children: [

                          Row(
                            children: [
                              Expanded(

                                child: Container(
                                  height: 150,
                                  margin: EdgeInsets.only( bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8283ED),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 5,
                                        spreadRadius: 2,
                                        offset: Offset(2,2,),
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    children: [

                                      Positioned(
                                          top:0,
                                          left: 0,
                                          child: Image.asset("assets/image/game/tru-bg1.png",)),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Image.asset("assets/image/game/game1.png", height: 150, fit: BoxFit.contain,),
                                      ),

                                      Positioned(
                                          left: 0,
                                          top: 20,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Classic Tournaments",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 13.sp,
                                                  ),
                                                ),
                                                Text("2 Match Found",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9.sp,
                                                      fontWeight: FontWeight.w600
                                                  ),
                                                ),
                                                Bounce(
                                                  duration: Duration(milliseconds: 80),
                                                  onPressed: (){},
                                                  child: Container(
                                                    margin: EdgeInsets.only(top: 20),
                                                    padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(0.5),
                                                          blurRadius: 10.0,
                                                          spreadRadius: 2.0,
                                                          offset: Offset(2.0, 5.0,),
                                                        )
                                                      ],
                                                    ),
                                                    child: Shimmer.fromColors(
                                                      baseColor: appColors.mainColor,
                                                      highlightColor: Colors.red,
                                                      child: Text(
                                                        "Play",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight: FontWeight.w600,
                                                            color: appColors.mainColor
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                      ),




                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8283ED),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                          offset: Offset(2,2,),
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:0,
                                            left: 0,
                                            child: Image.asset("assets/image/game/tru-bg1.png",)),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset("assets/image/game/game2.png", height: 150, fit: BoxFit.contain,),
                                        ),

                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Classic Tournaments",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                  Text("0 Match Found",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.w600
                                                    ),
                                                  ),

                                                  Bounce(
                                                    duration: Duration(milliseconds: 80),
                                                    onPressed: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(top: 20),
                                                      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            blurRadius: 10.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(2.0, 5.0,),
                                                          )
                                                        ],
                                                      ),
                                                      child:Shimmer.fromColors(
                                                        baseColor: appColors.mainColor,
                                                        highlightColor: Colors.red,
                                                        child: Text(
                                                          "Play",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w600,
                                                              color: appColors.mainColor
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),


                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration:BoxDecoration(
                                      color: Color(0xFF8283ED),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                          offset: Offset(2,2,),
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:0,
                                            left: 0,
                                            child: Image.asset("assets/image/game/tru-bg1.png",)),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset("assets/image/game/game3.png", height: 150, fit: BoxFit.contain,),
                                        ),

                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Classic Tournaments",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                  Text("125 Match Found",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.w600
                                                    ),
                                                  ),
                                                  Bounce(
                                                    duration: Duration(milliseconds: 80),
                                                    onPressed: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(top: 20),
                                                      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            blurRadius: 10.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(2.0, 5.0,),
                                                          )
                                                        ],
                                                      ),
                                                      child: Shimmer.fromColors(
                                                        baseColor: appColors.mainColor,
                                                        highlightColor: Colors.red,
                                                        child: Text(
                                                          "Play",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w600,
                                                              color: appColors.mainColor
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),




                                      ],
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8283ED),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                          offset: Offset(2,2,),
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:0,
                                            left: 0,
                                            child: Image.asset("assets/image/game/tru-bg1.png",)),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset("assets/image/game/game4.png", height: 150, fit: BoxFit.contain,),
                                        ),

                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Classic Tournaments",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                  Text("210 Match Found",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.w600
                                                    ),
                                                  ),

                                                  Bounce(
                                                    duration: Duration(milliseconds: 80),
                                                    onPressed: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(top: 20),
                                                      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            blurRadius: 10.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(2.0, 5.0,),
                                                          )
                                                        ],
                                                      ),
                                                      child: Shimmer.fromColors(
                                                        baseColor: appColors.mainColor,
                                                        highlightColor: Colors.red,
                                                        child: Text(
                                                          "Play",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w600,
                                                              color: appColors.mainColor
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),


                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8283ED),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                          offset: Offset(2,2,),
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:0,
                                            left: 0,
                                            child: Image.asset("assets/image/game/tru-bg1.png",)),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset("assets/image/game/game5.png", height: 150, fit: BoxFit.contain,),
                                        ),

                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Classic Tournaments",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                  Text("2 Match Found",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.w600
                                                    ),
                                                  ),
                                                  Bounce(
                                                    duration: Duration(milliseconds: 80),
                                                    onPressed: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(top: 20),
                                                      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            blurRadius: 10.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(2.0, 5.0,),
                                                          )
                                                        ],
                                                      ),
                                                      child: Shimmer.fromColors(
                                                        baseColor: appColors.mainColor,
                                                        highlightColor: Colors.red,
                                                        child: Text(
                                                          "Play",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w600,
                                                              color: appColors.mainColor
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),




                                      ],
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8283ED),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                          offset: Offset(2,2,),
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:0,
                                            left: 0,
                                            child: Image.asset("assets/image/game/tru-bg1.png",)),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset("assets/image/game/game6.png", height: 150, fit: BoxFit.contain,),
                                        ),

                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Classic Tournaments",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                  Text("2 Match Found",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.w600
                                                    ),
                                                  ),

                                                  Bounce(
                                                    duration: Duration(milliseconds: 80),
                                                    onPressed: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(top: 20),
                                                      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            blurRadius: 10.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(2.0, 5.0,),
                                                          )
                                                        ],
                                                      ),
                                                      child: Shimmer.fromColors(
                                                        baseColor: appColors.mainColor,
                                                        highlightColor: Colors.red,
                                                        child: Text(
                                                          "Play",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w600,
                                                              color: appColors.mainColor
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),


                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8283ED),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                          offset: Offset(2,2,),
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:0,
                                            left: 0,
                                            child: Image.asset("assets/image/game/tru-bg1.png",)),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset("assets/image/game/game7.png", height: 150, fit: BoxFit.contain,),
                                        ),

                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Classic Tournaments",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                  Text("2 Match Found",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.w600
                                                    ),
                                                  ),
                                                  Bounce(
                                                    duration: Duration(milliseconds: 80),
                                                    onPressed: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(top: 20),
                                                      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            blurRadius: 10.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(2.0, 5.0,),
                                                          )
                                                        ],
                                                      ),
                                                      child: Shimmer.fromColors(
                                                        baseColor: appColors.mainColor,
                                                        highlightColor: Colors.red,
                                                        child: Text(
                                                          "Play",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w600,
                                                              color: appColors.mainColor
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),




                                      ],
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8283ED),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                          offset: Offset(2,2,),
                                        )
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top:0,
                                            left: 0,
                                            child: Image.asset("assets/image/game/tru-bg1.png",)),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Image.asset("assets/image/game/game8.png", height: 150, fit: BoxFit.contain,),
                                        ),

                                        Positioned(
                                            left: 0,
                                            top: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Freefire Classic Game",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                  Text("2 Match Found",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9.sp,
                                                        fontWeight: FontWeight.w600
                                                    ),
                                                  ),

                                                  Bounce(
                                                    duration: Duration(milliseconds: 80),
                                                    onPressed: (){},
                                                    child: Container(
                                                      margin: EdgeInsets.only(top: 20),
                                                      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            blurRadius: 10.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(2.0, 5.0,),
                                                          )
                                                        ],
                                                      ),
                                                      child: Text(
                                                        "Play",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight: FontWeight.w600,
                                                            color: appColors.mainColor
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),


                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      )
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }

}

