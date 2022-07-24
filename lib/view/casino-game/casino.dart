import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:sizer/sizer.dart';


class CasinoGame extends StatefulWidget {
  const CasinoGame({Key? key}) : super(key: key);

  @override
  State<CasinoGame> createState() => _CasinoGameState();
}

class _CasinoGameState extends State<CasinoGame> with SingleTickerProviderStateMixin {
  int value = 10;
  int setValu = 10;



  bool _anderSeleceted = false;
  bool _baharSeleceted = false;


  double transfar = -200;

  bool _isCardSet = false;
  late int  _andar;
  late int  _bahar ;

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(milliseconds: 600),
          () => updatePlayAnimated(),
    );

    //is set card
    Future.delayed(Duration(milliseconds: 2000),
          () => setState(()=>_isCardSet  = true),
    );

    _andar = setValu;
    _bahar = setValu;  }

  void updatePlayAnimated(){
    print("object");
    setState((){
      transfar = 40;
    });
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
        title: Text("Sports Club",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: appColors.white
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

      body:  Container(
          width: width,
          height: height,
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/anderbahar-nagitive.png"),
                ),
              ),
              child: Stack(
                children: [
                  SizedBox(height: 8.h,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset("assets/image/bg.png", height: 250,width: 150,),
                  ),

                  //Board card
                  Positioned(
                    left: width/5,
                    right: width/5,
                    top: -22,
                    child: Container(
                      alignment: Alignment.center,
                      width: 400,
                      height: 250,
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/border/border.png"),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: Center(), //BoardCard(),
                    ),
                  ),




                  //playsers
                  Positioned(
                      bottom: 10,
                      left: width/2.2,
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xFF9F9A83),
                            border: Border.all(width: 3, color: Color(0XFFE63606)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      )
                  ),

                  //left player
                  leftPlayer1(),
                  leftPlayer2(),

                  //right player
                  rightPlayer1(),
                  rightPlayer2(),


                ],
              )
          )
      ),

      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
        margin: EdgeInsets.only(left: 80, right: 80, bottom: 0 ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.8),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width/4,
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text("SELECT AMOUNT FROM THE LEFT SITE.",
                      style: TextStyle(
                          color: Colors.white
                      )
                  ),
                  SizedBox(height: 5,),
                  Container(

                    padding: EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3, color: Color(0xFFD67211)),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/image/coin-m.png", height: 15, width: 15,),
                        SizedBox(width: 5,),
                        Text("4500 Coins",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ), 
            
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                    },
                    child: Image.asset("assets/image/casino-icon/10.png", height: 50,),
                  ),

                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                    },
                    child: Image.asset("assets/image/casino-icon/20.png", height: 50,),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                    },
                    child: Image.asset("assets/image/casino-icon/50.png", height: 50,),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                    },
                    child: Image.asset("assets/image/casino-icon/100.png", height: 50,),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                    },
                    child: Image.asset("assets/image/casino-icon/200.png", height: 50,),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                    },
                    child: Image.asset("assets/image/casino-icon/500.png", height: 50,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );


  }




  //Board Card
  // Widget BoardCard(){
  //   return Container(
  //     margin: EdgeInsets.only(left: 12.h, right: 14.h),
  //
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             Container(
  //               width: 37,
  //               height: 52,
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(5),
  //                   color: Colors.white.withOpacity(0.3)
  //               ),
  //             ),
  //             const Text("Andar",
  //               style: TextStyle(
  //                   fontWeight: FontWeight.w900,
  //                   fontSize: 10,
  //                   color: Colors.white54
  //               ),
  //             )
  //           ],
  //         ),
  //         Container(
  //           width: 50,
  //           height: 70,
  //           transform: Matrix4.translationValues(0.0, -12.0, 0.0),
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(5),
  //               color: Colors.white.withOpacity(0.3)
  //           ),
  //           child: _isCardSet ?Image.asset("assets/image/card/chirro/chirro-A.png"): Image.asset("assets/image/andarbaharicon.png"),
  //         ),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             Container(
  //               width: 37,
  //               height: 52,
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(5),
  //                   color: Colors.white.withOpacity(0.3)
  //               ),
  //             ),
  //             Text("Bahar",
  //               style: TextStyle(
  //                   fontWeight: FontWeight.w900,
  //                   fontSize: 10,
  //                   color: Colors.white54
  //               ),
  //             )
  //           ],
  //         ),
  //
  //       ],
  //     ),
  //   );
  // }

  //Left Player 1
  Widget leftPlayer1(){
    return AnimatedPositioned(
        duration: Duration(milliseconds: 1500),
        curve: Curves.bounceInOut,
        top: 5,
        left: transfar,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7,),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xFF9F9A83),
                  border: Border.all(width: 3, color: Color(0XFFE63606)),
                  borderRadius: BorderRadius.circular(100)
              ),
            ),

          ],
        )
    );
  }


  //Left Player 2
  Widget leftPlayer2(){
    return AnimatedPositioned(
        duration: Duration(milliseconds: 1500),
        curve: Curves.bounceInOut,
        top: 120,
        left: transfar,

        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7,),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xFF9F9A83),
                  border: Border.all(width: 3, color: Color(0XFFE63606)),
                  borderRadius: BorderRadius.circular(100)
              ),
            ),



          ],
        )
    );
  }


  //right Player 1
  Widget rightPlayer1(){
    return AnimatedPositioned(
        duration: Duration(milliseconds: 1500),
        curve: Curves.bounceInOut,
        top: 5,
        right: transfar,
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xFF9F9A83),
                  border: Border.all(width: 3, color: Color(0XFFE63606)),
                  borderRadius: BorderRadius.circular(100)
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7,),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),


          ],
        )
    );
  }

  //right Player 2
  Widget rightPlayer2(){
    return AnimatedPositioned(
        duration: Duration(milliseconds: 1500),
        curve: Curves.bounceInOut,
        right: transfar,
        top: 120,
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xFF9F9A83),
                  border: Border.all(width: 3, color: Color(0XFFE63606)),
                  borderRadius: BorderRadius.circular(100)
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7,),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFE51C44
                        ),
                        const Color(0xFF1C1542),
                      ],
                      begin: Alignment.centerLeft,
                      end:  Alignment.centerRight,
                      stops: [0.2, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Color(0xFFFDCA51)),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text("A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5,),
                      Image.asset("assets/image/coin-m.png", height: 14,),
                      SizedBox(width: 5,),
                      Text("100",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),


          ],
        )
    );
  }


}

//

