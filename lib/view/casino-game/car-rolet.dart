import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/casino-game/json/icon-json.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:mboile_game/widgets/gradient-text.dart';
import 'package:sizer/sizer.dart';

import '../home-screen/home-screen.dart';


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

  late List setPoint = [];

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
      appBar:buildAppBar(),

      body:  SizedBox(
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
                    top: -20,

                    child: Container(
                      alignment: Alignment.center,
                      width: 400,
                      height: 250,
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage("assets/image/border/car_rolet_board.png"),
                              fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: BoardCard(),
                    ),
                  ),

                  //Container
                  Positioned(
                      top: 10,
                      left: 30,
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        child: Image.asset("assets/image/users.png"),
                      )
                  ),

                  Positioned(
                      top: 10,
                      right: 30,
                      child: Container(
                          width: 60,
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 7, right: 7),
                          height: 220,
                          decoration: BoxDecoration(
                              border: Border.all(width: 5, color: Colors.blue),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: IconsJson.iconJson.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  InkWell(
                                      onTap: (){
                                        setState((){
                                          setPoint.clear();
                                          setPoint.add({
                                            "id" : IconsJson.iconJson[index]['id'],
                                            "amount" : IconsJson.iconJson[index]['amount'].toString(),
                                          });
                                        });

                                        print(setPoint);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          border: setPoint.isNotEmpty && setPoint[0]["id"] == IconsJson.iconJson[index]['id'] ? Border.all(width: 2, color: Colors.amber) :Border.all(width: 0),
                                        ),
                                        child: Image.asset(IconsJson.iconJson[index]['icon'], height: 25, width: 25, fit: BoxFit.contain,),
                                      )


                                  ),
                                  SizedBox(width: 4,),
                                ],
                              );
                            },
                          )

                      )
                  ),


                ],
              )
          )
      ),

      bottomNavigationBar: Container(
        height: 65,
        width: width/1.5,
        padding: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
        margin: EdgeInsets.only(left: width/9, right: width/9, bottom: 5 ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF262A4C).withOpacity(0.6),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFF757171).withOpacity(0.2),
                  border: Border.all(width: 5, color: Color(0XFFE63606)),
                  borderRadius: BorderRadius.circular(100)
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: width/6,
              //margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Select Amount From The Left Side",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                      )
                  ),
                  SizedBox(height: 2,),
                  Container(

                    padding: EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Color(0xFF123EB1)),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/image/coin/coin.png", height: 15, width: 15,),
                        SizedBox(width: 5,),
                        Text("4500 Coins",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFE01D1D),

                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
            SizedBox(width: 40,),
            Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: IconsJson.iconJson.length,
                  itemBuilder: (BuildContext context, int index) {
                    print(IconsJson.iconJson[index]['amount']);
                    return Row(
                      children: [
                        InkWell(
                          onTap: (){
                            setState((){
                              setPoint.clear();
                              setPoint.add({
                                "id" : IconsJson.iconJson[index]['id'],
                                "amount" : IconsJson.iconJson[index]['amount'].toString(),
                              });
                            });

                            print(setPoint);
                          },
                          child: setPoint.isNotEmpty && setPoint[0]["id"] == IconsJson.iconJson[index]['id'] ? Image.asset(IconsJson.iconJson[index]['icon'], height: 70, width: 70, fit: BoxFit.contain,) : Image.asset(IconsJson.iconJson[index]['icon'], height: 50, width: 50, fit: BoxFit.contain,),
                        ),
                        SizedBox(width: 4,),
                      ],
                    );
                  },
                )
            )
          ],
        ),
      ),

    );


  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      actions: [
        PopupMenuButton<int>(
          onSelected: (value){
            switch(value){
              case 1:
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallets()));
                break;

              case 2:
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallets()));
                break;
              case 3:
                showExit();
                break;
              default:
                return null;
            }
          },

          padding: EdgeInsets.zero,
          tooltip: "",
          icon: Image.asset("assets/image/menu_icon.png"),
          color: appColors.mainColor.withOpacity(0.0),//Adding tooltip
          shape: RoundedRectangleBorder(         //Adding Round Border
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          itemBuilder: (context) => [
            PopupMenuItem(

              child: Container(
                decoration: BoxDecoration(
                  border:  GradientBoxBorder(
                    gradient: LinearGradient(colors: [Colors.red.withOpacity(0.2),Colors.blue, ]),
                    width: 4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Wallet",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "oleo",
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      Image.asset("assets/image/menu/walet.png", height: 20, width:20, fit: BoxFit.cover,)
                    ],
                  ),
                ),
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: Container(
                decoration: BoxDecoration(
                  border:  GradientBoxBorder(
                    gradient: LinearGradient(colors: [Colors.red.withOpacity(0.2),Colors.blue, ]),
                    width: 4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rulers",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "oleo",
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      Image.asset("assets/image/menu/rolus.png", height: 20, width:20, fit: BoxFit.cover,)
                    ],
                  ),
                ),
              ),
              value: 2,
            ),
            PopupMenuItem(
              value: 3,
              child: Container(
                decoration: BoxDecoration(
                  border:  GradientBoxBorder(
                    gradient: LinearGradient(colors: [Colors.red.withOpacity(0.2),Colors.blue, ]),
                    width: 4,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Exit",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "oleo",
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      Image.asset("assets/image/menu/exit.png", height: 20, width:20, fit: BoxFit.cover,)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
        SizedBox(width: 10),
      ],

    );
  }


  Widget BoardCard(){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 100, right: 100, top: 30),
          child: Row(
            children: [
              Row(
                children: [
                  GradientText(
                    "TOTAL BET",
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFFFBF102),
                          Color(0xFFFBF102).withOpacity(0.5),
                        ]),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFCDCDCD),
                    ),
                    child: Text("2000",
                      style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFCDCDCD),
                    ),
                    child: Text("2000",
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        ),


        Container(
          margin: EdgeInsets.only(top: 20, left: 40, right: 40),

          child: Column(
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),


                ],
              ),

              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/image/casino-logo/1.png", height: 30, width: 30,fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 10,),
                      GradientText(
                        "12X200",
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey,
                              Colors.grey.shade200
                            ]),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )

                    ],
                  ),


                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> showExit() async {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Do you want to Exit.'),
          actions: <Widget>[
            TextButton(
              child: const Text('NO'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('YES'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
            ),
          ],
        );
      },
    );
  }





}

//

