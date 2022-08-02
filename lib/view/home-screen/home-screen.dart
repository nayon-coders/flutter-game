import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:marquee/marquee.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/7up/seven-up-loading.dart';
import 'package:mboile_game/view/andar-bahar/andar-bahar-loading.dart';
import 'package:mboile_game/view/online-batting/online-batting.dart';
import 'package:mboile_game/view/online-game/Turnaments.dart';
import 'package:mboile_game/view/profile/profile.dart';
import 'package:mboile_game/view/setting/full-shop.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/sign-in/sign-in.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../7up/7up.dart';
import '../casino-game/car-rolet.dart';
import '../setting/shop/shop.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageControler = PageController(viewportFraction:0.8);
  List images = [
    "https://cdn.thecoolist.com/wp-content/uploads/2017/08/Bloons-TD-browser-game.jpg",
    "https://filmdaily.co/wp-content/uploads/2021/06/fbgames-01.jpeg",
    "https://api.time.com/wp-content/uploads/2014/12/cookie-jam.jpg",
    "https://cwpwp2.betterthanpaper.com/wp-content/uploads/2014/10/soda1.jpg"
  ];
  var _currentPageValue = 0.0;
  double _scalFactor = 0.8;
  var _height = 300;
  @override
  void initState(){
    super.initState();
    _pageControler.addListener(() {
      setState((){
        _currentPageValue = _pageControler.page!;
      });
    });
  }
  @override
  void dispose(){
    super.dispose();
    _pageControler;
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColors.mainColor,
      drawer: Drawer(
        width: 260,
        child: Column(
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.only(top: 5, left: 20),
              decoration: BoxDecoration(
                color: appColors.mainColor,
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(20),
                // )
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 60,
                  ),

                  SizedBox(width: 15,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text("CodeCell",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),

                      ),
                      Text("01670750908",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
                        ),

                      ),

                    ],
                  )
                ],
              ),
            ),

           Expanded(child: ListView(
             children: [
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>OnlineBatting()));
                 },
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/onlinebatting.jpeg",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Online Betting", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>AndarBaharLoading()));
                 },
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/andar.jpeg",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Andar Bahar", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>CasinoGame()));
                 },
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/andar.jpeg",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Car Roulette", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SevenUpLoading()));
                 },
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/andar.jpeg",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("7 Up Down", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),

               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>TournamentList()));
                 },
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/ludu.png",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Online Tournaments", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>FullShop()));
                 },
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/shop.jpeg",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Shop", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallets()));
                 },
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/wallet.jpeg",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Wallet", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),

               InkWell(
                 onTap: (){},
                 child: Container(
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Image.asset("assets/image/result.jpeg",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Result", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: appColors.mainColor,
                       ),),
                     ],
                   ),
                 ),
               ),

               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                 },
                 child: Container(
                   color: appColors.mainColor,
                   padding: EdgeInsets.only(top:  10, bottom: 10, left: 15, right: 15),
                   child: Row(
                     children: [
                       Icon(
                         Icons.logout,
                         color: Colors.white,
                         size: 20.sp,
                       ),
                       SizedBox(width: 20,),
                       Text("Logout", style: TextStyle(
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w600,
                         color: Colors.white,
                       ),),
                     ],
                   ),
                 ),
               ),
             ],
           ))



          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: -10,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Shimmer.fromColors(
                      highlightColor: Colors.white,
                      baseColor: Colors.grey,
                      child: Image.asset("assets/image/appicon.png", height: 50, width: 50, fit: BoxFit.cover,)),
                  SizedBox(width: 5,),
                  Text("Sports Club",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: appColors.white
                    ),
                  )
                ],
              ),
            )
          ],
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
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/bg.png"),
            )
          ),
          child:  Container(
            width: width,
            height: height,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: width/4,
                        height: 270,
                        margin: EdgeInsets.only( left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: appColors.white,
                        ),
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                  //SizedBox(height: 140,),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 200,
                            height: 120,
                            decoration: BoxDecoration(
                                color: appColors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(images[0]),
                                    fit: BoxFit.cover
                                )
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: width,
                                    padding: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff231750),
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Text(
                                      "ABC",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: appColors.white,
                                          fontFamily: "Nanu",
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child:  Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width/9,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF40FFAF),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Shimmer.fromColors(
                                          baseColor: appColors.mainColor,
                                          highlightColor: Colors.white,
                                          child: Text(
                                            "Play",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontFamily: "Nanu",
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 200,
                            height: 120,
                            decoration: BoxDecoration(
                                color: appColors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(images[1]),
                                    fit: BoxFit.cover
                                )
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: width,
                                    padding: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff231750),
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Text(
                                      "ABC",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: appColors.white,
                                          fontFamily: "Nanu",
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child:  Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width/9,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF40FFAF),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Shimmer.fromColors(
                                          baseColor: appColors.mainColor,
                                          highlightColor: Colors.white,
                                          child: Text(
                                            "Play",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontFamily: "Nanu",
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 200,
                            height: 120,
                            decoration: BoxDecoration(
                                color: appColors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(images[3]),
                                    fit: BoxFit.cover
                                )
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: width,
                                    padding: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff231750),
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Text(
                                      "ABC",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: appColors.white,
                                          fontFamily: "Nanu",
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child:  Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width/9,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF40FFAF),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Shimmer.fromColors(
                                          baseColor: appColors.mainColor,
                                          highlightColor: Colors.white,
                                          child: Text(
                                            "Play",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontFamily: "Nanu",
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                      SizedBox(height: 30,),

                      Row(
                        children: [
                          Container(
                            width: 200,
                            height: 120,
                            decoration: BoxDecoration(
                                color: appColors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(images[0]),
                                    fit: BoxFit.cover
                                )
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: width,
                                    padding: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff231750),
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Text(
                                      "ABC",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: appColors.white,
                                          fontFamily: "Nanu",
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child:  Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width/9,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF40FFAF),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Shimmer.fromColors(
                                          baseColor: appColors.mainColor,
                                          highlightColor: Colors.white,
                                          child: Text(
                                            "Play",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontFamily: "Nanu",
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 200,
                            height: 120,
                            decoration: BoxDecoration(
                                color: appColors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(images[0]),
                                    fit: BoxFit.cover
                                )
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: width,
                                    padding: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff231750),
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Text(
                                      "ABC",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: appColors.white,
                                          fontFamily: "Nanu",
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child:  Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width/9,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF40FFAF),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Shimmer.fromColors(
                                          baseColor: appColors.mainColor,
                                          highlightColor: Colors.white,
                                          child: Text(
                                            "Play",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontFamily: "Nanu",
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 200,
                            height: 120,
                            decoration: BoxDecoration(
                                color: appColors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(images[0]),
                                    fit: BoxFit.cover
                                )
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: width,
                                    padding: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff231750),
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Text(
                                      "ABC",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: appColors.white,
                                          fontFamily: "Nanu",
                                          fontSize: 12.sp
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child:  Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width/9,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF40FFAF),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Shimmer.fromColors(
                                          baseColor: appColors.mainColor,
                                          highlightColor: Colors.white,
                                          child: Text(
                                            "Play",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontFamily: "Nanu",
                                                fontSize: 15.sp
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        )
      ),
      bottomNavigationBar:
      Container(
        alignment: Alignment.bottomCenter,
        width: width,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        child: buildMarquee(text: "Some sample text that takes some space.")
      ),
    );
  }

   buildMarquee({required String text}) {
    return Container(
      padding: EdgeInsets.only(top: 7, left: 10, right: 10),
      child: Marquee(
          text: '${text}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp, color: Colors.white),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 100.0,
          pauseAfterRound: Duration(seconds: 1),
          startPadding: 20.0,
          accelerationDuration: Duration(seconds: 3),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 500),
          decelerationCurve: Curves.easeOut,

        ),
    );
  }

}

