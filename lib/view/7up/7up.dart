import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/andar-bahar/andar-baha-start.dart';
import 'package:mboile_game/view/home-screen/home-screen.dart';
import 'package:mboile_game/view/setting/setting.dart';
import 'package:mboile_game/view/wallet/add-money/wallets.dart';
import 'package:mboile_game/widgets/tost.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../casino-game/json/icon-json.dart';


class SevenUp extends StatefulWidget {
  const SevenUp({Key? key}) : super(key: key);

  @override
  State<SevenUp> createState() => _SevenUpState();
}

class _SevenUpState extends State<SevenUp> with SingleTickerProviderStateMixin {
  int value = 10;
  int setValu = 10;

  late List setPoint = [];

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
      transfar = 80;
    });
  }

  //select bit item
  late List SelectItemForBit = [];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColors.mainColor,
      appBar: buildAppBar(),

      body: SizedBox(
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
                    left: width/10,
                    right: width/10,
                    top: -25,
                    child:  Container(
                      alignment: Alignment.center,
                      width: 450,
                      height: 350,
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/border/board.png"),
                              fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: BoardCard(width, height),
                    ),
                  ),




                  //playsers
                  Positioned(
                      left: 20,
                      top: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,

                            child: Image.asset("assets/image/users.png"),
                          ),


                        ],
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




  //Board Card
  Widget BoardCard(double width, double height){
    return Container(
      margin: EdgeInsets.only(left: width/5.7, right: width/5.8, bottom: 10),
      transform: Matrix4.translationValues(0.0, -22.0, 0.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Bounce(
            onPressed: ()=>selectBit("1"),
            duration: Duration(milliseconds: 80),
            child: Container(
              width: 92,
              height: 82,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100), 
                  bottomLeft: Radius.circular(100)
                ),
                border: SelectItemForBit.isNotEmpty &&
                    SelectItemForBit[0] == "1" ?
                    Border.all(width: 5, color: Color(0xFF088C25))
                    : Border.all(width: 0, color: Colors.transparent),
              ),
              child: Center(
                child: Text("2-6",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp
                  ),
                ),
              ),
            ),
          ),
          Bounce(
          onPressed: ()=>selectBit("2"),
          duration: Duration(milliseconds: 80),
          child: Container(
            width: 129,
            height: 89,
            transform: Matrix4.translationValues(-0.0, 0.0, 0.0),
            decoration: BoxDecoration(
              border: SelectItemForBit.isNotEmpty &&
                  SelectItemForBit[0] == "2" ?
              Border.all(width: 5, color: Color(0xFF0B87A2))
                  : Border.all(width: 0, color: Colors.transparent),
            ),
            child: Center(
              child: Text("7",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp
                ),
              ),
            ),
          ),
          ),
          Bounce(
          onPressed: ()=>selectBit(3),
          duration: Duration(milliseconds: 80),
          child: Container(
            width: 94,
            height: 82,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100)
              ),
              border: SelectItemForBit.isNotEmpty &&
                  SelectItemForBit[0] == "3" ?
              Border.all(width: 5, color: Color(0xFF16343B))
                  : Border.all(width: 0, color: Colors.transparent),
            ),
            child: Center(
              child: Text("8-12",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp
                ),
              ),
            ),
          ),
          ),

        ],
      ),
    );
  }

  selectBit(id) {
    setState((){
      SelectItemForBit.clear();
      SelectItemForBit.add("$id");
      print(SelectItemForBit);
      ShowToast("You Select")..successToast();
    });

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

