import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:sizer/sizer.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

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
                          "Freefire CS(Match)",
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
                        child: Text("WATCH MATCH",
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
                        child: Text("Prizes Details",
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
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){},
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: appColors.buttonColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("NOT START",
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
                          "Freefire CS(Match)",
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
                        child: Text("WATCH MATCH",
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
                        child: Text("Prizes Details",
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
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){},
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: appColors.buttonColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("NOT START",
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
                          "Freefire CS(Match)",
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
                        child: Text("WATCH MATCH",
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
                        child: Text("Prizes Details",
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
              SizedBox(height: 10,),
              Bounce(
                duration: Duration(milliseconds: 100),
                onPressed: (){},
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: appColors.buttonColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("NOT START",
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
            ],
          ),
        ),

      ],
    );
  }


  void _startMatch(){

  }
}
