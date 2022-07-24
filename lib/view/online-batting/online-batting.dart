import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/online-batting/match-json.dart';
import 'package:mboile_game/view/sign-in/sign-in.dart';
import 'package:sizer/sizer.dart';

import '../setting/setting.dart';
import '../wallet/add-money/wallets.dart';

class OnlineBatting extends StatefulWidget {
  const OnlineBatting({Key? key}) : super(key: key);

  @override
  State<OnlineBatting> createState() => _OnlineBattingState();
}

class _OnlineBattingState extends State<OnlineBatting> {

  List event = [
    {
      "name" : "All Game",
      "id" : 0,
    },
    {
      "name" : "Cricket",
      "id" : 1,
    },{
      "name" : "Football",
      "id" : 2,
    },{
      "name" : "Table Tans",
      "id" : 3,
    },{
      "name" : "Badminton",
      "id" : 4,
    },
    {
      "name" : "Hoki",
      "id" : 5,
    },
    {
      "name" : "Ludu",
      "id" : 6,
    },
    {
      "name" : "Daba",
      "id" : 7,
    },
  ];
  List selectedEvenn = [];
  List selectedTeam= [];


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
                  image: AssetImage("assets/image/bg.png"),
                ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: (){
                          _selectEventPopUpNotification();
                        },
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFFE51C44),
                                  Color(0xFFB93532),
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
                              Icon(
                                Icons.event_note_sharp,
                                color:Colors.white,
                                size: 15.sp,
                              ),
                              SizedBox(width: 5,),
                              Text("Select Even",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 600,
                        height: 40,
                        child: ListView.builder(

                          scrollDirection: Axis.horizontal,
                          itemCount: event.length,
                          itemBuilder: (_, index){

                            return  InkWell(
                              onTap: (){
                                setState((){
                                  selectedEvenn.clear();
                                  selectedEvenn.add(index);
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: selectedEvenn.contains(index)? Colors.red : Colors.transparent,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(width: 3, color: Colors.white),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.gamepad_outlined,
                                      color:  Colors.white,
                                      size: 15.sp,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("${event[index]["name"]}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },

                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image/bg-rect.png"),
                              )
                            ),
                            child: Center(
                              child: Text("Top Live-matches",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(

                            ),
                            child: Center(
                              child: Text("Top Per-matches",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                   Container(
                     width: width,
                     height: height,
                     child: ListView.builder(

                        itemCount: MatchJson().MatchList.length,
                        itemBuilder: (_, index){
                          var data = MatchJson().MatchList[index];
                          return  Container(
                                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                                    padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),

                                ),
                              child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //TODO Matching
                                Container(
                                  width: width/3,
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          ClipOval(child: Image.network("${data["team1Flg"]}", height: 50, width: 50, fit: BoxFit.cover,)),
                                          SizedBox(height: 10,),
                                          Text("${data["team1"]}",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13.sp
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Text("Start Time",
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                color: appColors.mainColor
                                            ),
                                          ),
                                          Text("15h 30m",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: appColors.mainColor
                                            ),
                                          ),
                                          Text("Football",
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: appColors.mainColor
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          ClipOval(child: Image.network("${data["team2Flg"]}", height: 50, width: 50, fit: BoxFit.cover,)),
                                          SizedBox(height: 10,),
                                          Text("${data["team2"]}",
                                            style: TextStyle(
                                                color: appColors.mainColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13.sp
                                            ),
                                          )
                                        ],
                                      )

                                    ],
                                  ),
                                ),

                                //TODO Premier League
                                Container(
                                  width: width/2,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Premier League",
                                            style: TextStyle(
                                              color: appColors.mainColor,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text("1X3",
                                            style: TextStyle(
                                              color: appColors.mainColor,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),

                                      SizedBox(height: 10,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("${data["team1_id"]}",
                                                style: TextStyle(
                                                    color: appColors.mainColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.sp
                                                ),
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  setState((){
                                                    selectedTeam.clear();
                                                    selectedTeam.add("${index}.${data["team1_id"]}");
                                                    _setBet(data["team1_amount"], data["team1_id"]);
                                                  });
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                                                  decoration: BoxDecoration(
                                                    color: selectedTeam.contains("${index}.${data["team1_id"]}")? Colors.red:Colors.white,
                                                    borderRadius: BorderRadius.circular(100),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        spreadRadius: 5,
                                                        blurRadius: 7,
                                                        offset: Offset(3, 3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: Text("${data["team1_amount"]}",
                                                    style: TextStyle(
                                                        fontSize: 11.sp,
                                                        fontWeight: FontWeight.bold,
                                                        color: selectedTeam.contains("${index}.${data["team1_id"]}")? Colors.white: appColors.mainColor,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                              children: [
                                                Text("${data["draw_id"]}",
                                                  style: TextStyle(
                                                      color: appColors.mainColor,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 13.sp
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: (){
                                                    setState((){
                                                      selectedTeam.clear();
                                                      selectedTeam.add("${index}.${data["draw_id"]}");
                                                      _setBet(data["draw_amount"], data["draw_id"]);
                                                    });

                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                                                    decoration: BoxDecoration(
                                                      color: selectedTeam.contains("${index}.${data["draw_id"]}")? Colors.red:Colors.white,
                                                      borderRadius: BorderRadius.circular(100),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(3, 3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Text("${data["draw_amount"]}",
                                                      style: TextStyle(
                                                          fontSize: 11.sp,
                                                          fontWeight: FontWeight.bold,
                                                        color: selectedTeam.contains("${index}.${data["draw_id"]}")? Colors.white: appColors.mainColor,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          Column(
                                            children: [
                                              Text("${data["team2_id"]}",
                                                style: TextStyle(
                                                    color: appColors.mainColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13.sp
                                                ),
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  setState((){
                                                    selectedTeam.clear();
                                                    selectedTeam.add("${index}.${data["team2_id"]}");
                                                    _setBet(data["team2_amount"], data["team2_id"]);
                                                  });

                                                },
                                                child:  Container(
                                                  padding: EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                                                  decoration: BoxDecoration(
                                                    color: selectedTeam.contains("${index}.${data["team2_id"]}")? Colors.red:Colors.white,
                                                    borderRadius: BorderRadius.circular(100),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        spreadRadius: 5,
                                                        blurRadius: 7,
                                                        offset: Offset(3, 3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: Text("${data["team2_amount"]}",
                                                    style: TextStyle(
                                                        fontSize: 11.sp,
                                                        fontWeight: FontWeight.bold,
                                                        color: selectedTeam.contains("${index}.${data["team2_id"]}")? Colors.white: appColors.mainColor,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )



                              ],
                              ),
                          );
                        },
                  ),
                   ),


                ],
              ),
            ),
          )
    ),

    );
  }

  _selectEventPopUpNotification(){
    return showDialog<void>(
      context: context,

      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
           alignment: Alignment.bottomLeft,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.symmetric(horizontal: 0),
            backgroundColor: Color(0xFFFFFFFF).withOpacity(0.8),
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(32.0))),
            content: Container(

              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/1.4,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bounce(
                    duration: Duration(milliseconds: 80),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      alignment: Alignment.center,
                      transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFE51C44),
                              Color(0xFFB93532),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                          color: appColors.red
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFD94759)
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color:Colors.white,
                          size: 15.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(

                    transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                              children:  <TextSpan>[
                                TextSpan(  text: 'Bets Information ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: appColors.mainColor,
                                      fontSize: 14.sp,
                                    )),
                                TextSpan(text: '82', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: appColors.mainColor,
                                  fontSize: 18.sp,
                                )),
                                TextSpan(text: ' Total Bets!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: appColors.mainColor,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xFF57C7C1).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Football",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text("Win : Liverpool",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("216 tk",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(height: 10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children:  <TextSpan>[
                                        TextSpan(  text: 'Status: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: appColors.mainColor,
                                              fontSize: 14.sp,
                                            )),
                                        TextSpan(text: 'Pending', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF0500EB),
                                          fontSize: 18.sp,
                                        )),

                                      ],
                                    ),
                                  ),

                                  Text("Bet Slip",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )


                ],
              ),
            )

        );
      },
    );
  }


  Future<void>_setBet(amount, id) async{
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            content: Container(
              width: 400,
              height: 270,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w100,
                          fontSize: 12.sp,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallets()));
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          Text(
                            "1000.00",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w100,
                                fontSize: 12.sp,
                                fontStyle: FontStyle.italic
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(height: 2, color: Colors.grey,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chelsea — Liverpool",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold

                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text("$amount",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color:  Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text("1",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color:  Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(3, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text("1.5",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                                color:  Colors.red,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Match to be Drawn",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic

                        ),
                      ),

                      Text(
                        "0.89",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic

                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.grey)
                          ),
                          child: Row(
                            children: [
                              Text(
                                "200",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic

                                ),
                              ),
                              SizedBox(width: 50,),

                              Text(
                                "280",
                                style: TextStyle(
                                    color: Color(0xFFFF4B00),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic

                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                      SizedBox(width: 50,),
                      Expanded(
                        flex: 2,
                        child: Bounce(
                          duration: Duration(milliseconds: 80),
                          onPressed: () {
                            _showSuccessPopUp();
                          },
                          child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFF0E1647),
                                  borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Make a bet",
                                  style: TextStyle(
                                      color: Color(0xFFFF4B00),
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic

                                  ),
                                ),
                              ),
                          ),
                        ),
                      )



                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {
                          _addMoneyMultipy(5);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Text("5",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {
                          _addMoneyMultipy(10);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Text("10",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),
                      ),
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {
                          _addMoneyMultipy(20);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Text("20",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),
                      ),
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {
                          _addMoneyMultipy(50);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Text("50",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),
                      ),
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {
                          _addMoneyMultipy(100);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Text("100",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),
                      ),
                      Bounce(
                        duration: Duration(milliseconds: 80),
                        onPressed: () {
                          _addMoneyMultipy(200);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Text("200",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            )

        );
      },
    );
  }

  void _addMoneyMultipy(int amount){
    print(amount);

  }

  Future<void> _showSuccessPopUp() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.blue.withOpacity(0.4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            content: Container(
              width: 100,
              height: 180,
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                    size: 120,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Your bet has been set",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.sp,

                    ),
                  )
                ],
              ),
            )

        );
      },
    );
  }
}
