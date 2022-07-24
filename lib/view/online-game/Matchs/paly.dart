import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/widgets/button.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class PlayMatch extends StatelessWidget {
  const PlayMatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Container(
          width: width,
          margin: EdgeInsets.only(left: 40, right: 40, top: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF2C2C2C),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/image/game/full.png", height: 50, width: 60,fit: BoxFit.cover,),
                  SizedBox(width: 7,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        " SPORTS CLUB  || CLASS SQUAD 6 VS 6",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        " 7/04/2022 at 04:05 PM",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "TOTAL PRICE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "520.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "PER KILL",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "0.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "ENTRY FEE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "100.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "TYPE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "6 VS 6",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "VERSION",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Mobile",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "MAP",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "GOOGLE MAP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 400,
                    child: Column(
                      children: [
                        LinearPercentIndicator(
                          width: 400.0,
                          lineHeight: 8.0,
                          percent: 0.9,
                          progressColor: Colors.amber,
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Only 2 Spost Left",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "10/12",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Bounce(
                    duration: Duration(milliseconds: 100),
                    onPressed: (){},
                    child: Container(
                      width: 120,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: appColors.buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("CLOSED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nanu",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: appColors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0XFF4E6A6B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Rome ID",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Nanu",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900,
                              color: appColors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0XFF4E6A6B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.monetization_on,
                              color: Color(0XFFFFFFFF),
                            ),
                            Text("Prizes ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Nanu",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w900,
                                  color: appColors.white
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0XFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), 
                ],
              ),
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){},
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0XFFFF6F00),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("How to pally?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nanu",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900,
                            color: appColors.white
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){
                  _startMatch();
                },
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0XFF679267),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Start in: 45 MINUTES",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nanu",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: appColors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          width: width,
          margin: EdgeInsets.only(left: 40, right: 40, top: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF2C2C2C),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/image/game/full.png", height: 50, width: 60,fit: BoxFit.cover,),
                  SizedBox(width: 7,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        " SPORTS CLUB  || CLASS SQUAD 6 VS 6",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        " 7/04/2022 at 04:05 PM",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "TOTAL PRICE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "520.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "PER KILL",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "0.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "ENTRY FEE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "100.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "TYPE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "6 VS 6",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "VERSION",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Mobile",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "MAP",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "GOOGLE MAP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 400,
                    child: Column(
                      children: [
                        LinearPercentIndicator(
                          width: 400.0,
                          lineHeight: 8.0,
                          percent: 0.9,
                          progressColor: Colors.amber,
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Only 2 Spost Left",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "10/12",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Bounce(
                    duration: Duration(milliseconds: 100),
                    onPressed: (){},
                    child: Container(
                      width: 120,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: appColors.buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("CLOSED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nanu",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: appColors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0XFF4E6A6B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Rome ID",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Nanu",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900,
                              color: appColors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0XFF4E6A6B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.monetization_on,
                              color: Color(0XFFFFFFFF),
                            ),
                            Text("Prizes ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Nanu",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w900,
                                  color: appColors.white
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0XFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){},
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0XFFFF6F00),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("How to pally?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nanu",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900,
                            color: appColors.white
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){
                  _startMatch();
                },
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0XFF679267),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Start in: 45 MINUTES",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nanu",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: appColors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          width: width,
          margin: EdgeInsets.only(left: 40, right: 40, top: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF2C2C2C),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/image/game/full.png", height: 50, width: 60,fit: BoxFit.cover,),
                  SizedBox(width: 7,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        " SPORTS CLUB  || CLASS SQUAD 6 VS 6",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        " 7/04/2022 at 04:05 PM",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "TOTAL PRICE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "520.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "PER KILL",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "0.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "ENTRY FEE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "100.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "TYPE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "6 VS 6",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "VERSION",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Mobile",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          "MAP",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "GOOGLE MAP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 13.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 400,
                    child: Column(
                      children: [
                        LinearPercentIndicator(
                          width: 400.0,
                          lineHeight: 8.0,
                          percent: 0.9,
                          progressColor: Colors.amber,
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Only 2 Spost Left",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "10/12",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Bounce(
                    duration: Duration(milliseconds: 100),
                    onPressed: (){},
                    child: Container(
                      width: 120,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: appColors.buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("CLOSED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nanu",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: appColors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0XFF4E6A6B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Rome ID",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Nanu",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900,
                              color: appColors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Bounce(
                      duration: Duration(milliseconds: 100),
                      onPressed: (){},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0XFF4E6A6B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.monetization_on,
                              color: Color(0XFFFFFFFF),
                            ),
                            Text("Prizes ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Nanu",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w900,
                                  color: appColors.white
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0XFFFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){},
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0XFFFF6F00),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("How to pally?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Nanu",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900,
                            color: appColors.white
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){
                  _startMatch();
                },
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0XFF679267),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Start in: 45 MINUTES",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nanu",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: appColors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }


  void _startMatch(){

  }
}
