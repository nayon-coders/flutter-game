import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mboile_game/view/home-screen/home-screen.dart';
import 'package:mboile_game/widgets/button.dart';
import 'package:shimmer/shimmer.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/gradient-text.dart';


class Sprin extends StatefulWidget {
  @override
  _SprinState createState() => _SprinState();
}

class _SprinState extends State<Sprin> {
  StreamController<int> selected = StreamController<int>();

  int _chooseNumber = 1;
  int _chooseCoin = 1;

  @override
  void initState(){
    super.initState();
    print(_isSetBid);


    if(_isCompleteSpining == true){
      _showResult();
    }
  }

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  bool _isSetBid = false;
  bool _isCompleteSpining = false;
  bool _isStart = false;
  bool _isLoading = true;


  @override
  Widget build(BuildContext context) {
    final items = <String>[
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
    ];
    List<Color> ItemColors = [Colors.redAccent, Colors.teal, Colors.green, Colors.grey,Colors.redAccent, Colors.teal, Colors.green, Colors.grey];

    return Column(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: Container(
             transform: Matrix4.translationValues(0.0, -20.0, 0.0),

              child: GradientText(
                'Spin Game',
                style:  TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFECEDF0),
                      Color(0xFF9699AC),
                    ]),
              ),
            ),
          ),
          Expanded(
            child:  Container(
              width: 500,
              height: 400,
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: FortuneWheel(

                indicators: <FortuneIndicator>[
                  FortuneIndicator(
                    alignment: Alignment.topCenter, // <-- changing the position of the indicator
                    child: TriangleIndicator(
                      color: Colors.red,// <-- changing the color of the indicator
                    ),
                  ),
                ],
                onAnimationEnd: (){

                  _isLoading = false;
                  setState((){
                    if(_isStart == true){
                      _isCompleteSpining = true;
                      if(_isCompleteSpining == true){
                        _showResult();
                      }
                    }else{
                      _isSetBid = true;
                      if(_isSetBid == true){
                        _showBidSet();
                      }
                    }

                  });
                },
                selected: selected.stream,
                items: [
                  for (var it in items)
                    FortuneItem(
                      style: FortuneItemStyle(
                          color: it == "1" ? Color(0xFF7FCED8) : it == "2" ? Color(0xFFE55555): it == "3" ? Color(0xFF50405B): it == "4" ? Color(0xFFF7AD1C) :it == "5" ? Color(0xFF7FCED8) : it == "6" ? Color(0xFFE55555): it == "7" ? Color(0xFF50405B):  Color(0xFFF7AD1C),//Color(Random().nextInt(0x3fffffff)).withOpacity(1),// <-- custom circle slice fill color
                          borderColor: Colors.white54,
                          borderWidth: 5,
                          textStyle: TextStyle(
                            fontSize: 10.sp,
                          )// <-- custom circle slice stroke color
                      ),
                      child: Text(it),
                    ),

                ],
              ),
            ),
          ),

          _isLoading ? Center()
          :  Bounce(
            duration: Duration(milliseconds: 80),
            onPressed: (){
              setState(() {
                _isStart = true;
                print(_isStart);
                selected.add(
                  Fortune.randomInt(0, items.length),
                );
              });
            },
            child: Container(
              width: 150,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFF40E0E),
                    Color(0xFF1D2042),
                  ],
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Text("START",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                    color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox(height: 5,)
        ]
    );

  }

  Future<void> _showBidSet(){
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
         return StatefulBuilder(
            builder: (context, setState) {
            return AlertDialog(
                backgroundColor: Color(0xFFF0F0F0).withOpacity(0.6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                content: Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      // GradientText(
                      //   'Spin Game',
                      //   style:  TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                      //   gradient: LinearGradient(
                      //     begin: Alignment.topCenter,
                      //       end: Alignment.bottomCenter,
                      //       colors: [
                      //         Color(0xFFECEDF0),
                      //         Color(0xFF9699AC),
                      //   ]),
                      // ),


                      SizedBox(height: 30,),

                      Text("Choose Your Number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                           fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Bounce(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.red,
                                ),
                              ),
                              duration: Duration(milliseconds: 80),
                              onPressed: (){
                                setState((){
                                  if(_chooseNumber >1){
                                    _chooseNumber--;
                                  }

                                });

                              }
                          ),

                          Container(
                            width: 80,
                            height: 25,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.white,
                            child: Center(
                              child: Text("$_chooseNumber"),
                            ),
                          ),


                          Bounce(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.red,
                                ),
                              ),
                              duration: Duration(milliseconds: 80),
                              onPressed: (){
                                setState((){
                                    _chooseNumber++;

                                });

                              }
                          ),
                        ],
                      ),

                      SizedBox(height: 30,),

                      Text("Choose Your Coin",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Bounce(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.red,
                                ),
                              ),
                              duration: Duration(milliseconds: 80),
                              onPressed: (){
                                setState((){
                                  if(_chooseCoin >1){
                                    _chooseCoin--;
                                  }

                                });

                              }
                          ),

                          Container(
                            width: 80,
                            height: 25,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.white,
                            child: Row(

                              children: [
                                SizedBox(width: 10,),
                                Image.asset("assets/image/coin-m.png",height: 20, width: 20,),

                                SizedBox(width: 20,),
                                Center(
                                  child: Text("$_chooseCoin"),
                                ),
                              ],
                            ),
                          ),


                          Bounce(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.red,
                                ),
                              ),
                              duration: Duration(milliseconds: 80),
                              onPressed: (){
                                setState((){
                                    _chooseCoin++;
                                });

                              }
                          ),
                        ],
                      ),


                      SizedBox(height: 30,),

                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                              gradient: LinearGradient(
                                  colors: [Color(0xFFF40E0E), Color(0xFF0E1647)],
                                begin: Alignment.topCenter ,
                                end: Alignment.bottomCenter
                              )
                          ),
                          child: Text("OK",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )


                    ],
                  ),
                )

            );
          }
        );
      },
    );

  }

  Future<void> _showResult(){
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                  backgroundColor: Color(0xFFF0F0F0).withOpacity(0.6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  content: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            // GradientText(
                            //   'Spin Game',
                            //   style:  TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                            //   gradient: LinearGradient(
                            //     begin: Alignment.topCenter,
                            //       end: Alignment.bottomCenter,
                            //       colors: [
                            //         Color(0xFFECEDF0),
                            //         Color(0xFF9699AC),
                            //   ]),
                            // ),


                            SizedBox(height: 30,),

                            Text("The result is.........",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.sp,
                              ),
                            ),
                            SizedBox(height: 30,),

                            Text("1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 35.sp,
                              ),
                            ),


                            SizedBox(height: 30,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text("You Win*",
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    ),

                                    Bounce(
                                      duration: Duration(milliseconds: 80),
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            gradient: LinearGradient(
                                                colors: [Color(0xFFF40E0E), Color(0xFF0E1647)],
                                                begin: Alignment.topCenter ,
                                                end: Alignment.bottomCenter
                                            )
                                        ),
                                        child: Text("Re-Play",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("",
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),

                                    Bounce(
                                      duration: Duration(milliseconds: 80),
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            gradient: LinearGradient(
                                                colors: [Color(0xFFF40E0E), Color(0xFF0E1647)],
                                                begin: Alignment.topCenter ,
                                                end: Alignment.bottomCenter
                                            )
                                        ),
                                        child: Text("Home",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              ],
                            )


                          ],
                        ),
                      ),
                    ],
                  )

              );
            }
        );
      },
    );
  }
}

