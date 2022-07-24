import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:sizer/sizer.dart';


class AndarBaharLoading extends StatefulWidget {
  const AndarBaharLoading({Key? key}) : super(key: key);

  @override
  State<AndarBaharLoading> createState() => _AndarBaharLoadingState();
}

class _AndarBaharLoadingState extends State<AndarBaharLoading> {



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
          alignment: Alignment.centerLeft,
          width: width,
          height: height,
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/bg.png"),
                ),
              ),
              child: Container()
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



}
