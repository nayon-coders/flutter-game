import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/andar-bahar/andar-bahar-loading.dart';
import 'package:mboile_game/view/online-batting/online-batting.dart';
import 'package:mboile_game/view/online-game/online-game-list.dart';
import 'package:mboile_game/view/profile/profile.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/sign-in/sign-in.dart';
import 'package:mboile_game/view/spring-game/snip-game-loading.dart';
import 'package:mboile_game/view/spring-game/spin-game.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/left-logo.dart';
import '../casino-game/casino.dart';
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
        child: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: appColors.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                )
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 80,
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
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                        },
                        child: Text("View Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                          ),

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
                       Text("Andar Bahar-1", style: TextStyle(
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
                       Text("Andar Bahar-2", style: TextStyle(
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
                       Text("Andar Bahar-3", style: TextStyle(
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
                       Image.asset("assets/image/ludu.png",
                         height: 35, width: 35,
                       ),
                       SizedBox(width: 20,),
                       Text("Ludo Game", style: TextStyle(
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop()));
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
                 onTap: (){},
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/bg.png"),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: width/3,
                    height: 220,
                    margin: EdgeInsets.only(top: height/10, left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appColors.white,
                    ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
              //SizedBox(height: 140,),

              Container(
                width: width/1.6,
                height: 220,
                child: CarouselSlider.builder(
                  itemCount: images.length,
                  options: CarouselOptions(
                    height: 300,
                    aspectRatio: 16/9,
                    viewportFraction: 0.7,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    initialPage: 0,
                    enableInfiniteScroll:true,
                    reverse: false,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemBuilder: (context, index, realIdx) {
                    return  Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: appColors.red,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(images[index]),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:  Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 50,
                              width: width,
                              padding: EdgeInsets.only(left: 50, right: 20,top: 10, bottom: 10),
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
                                height: 50,
                                width: MediaQuery.of(context).size.width/7,
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
                    );
                  },
                ),
              )



            ],
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
          color: appColors.white,
        ),
        child: Center(
          child: Text("Notice",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                fontFamily: "Nanu"
            ),
          ),
        ),
      ),
    );
  }

}

