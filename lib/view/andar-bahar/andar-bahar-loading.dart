import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/andar-bahar/andar-bahar.dart';

class AndarBaharLoading extends StatefulWidget {
  const AndarBaharLoading({Key? key}) : super(key: key);

  @override
  State<AndarBaharLoading> createState() => _AndarBaharLoadingState();
}

class _AndarBaharLoadingState extends State<AndarBaharLoading> {

  @override
  void initState(){
    super.initState(); 
    Future.delayed(Duration(seconds: 1),
      () => Navigator.push(context, MaterialPageRoute(builder: (context)=>AndarBahar())),
    );
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColors.mainColor,
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
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/image/andarbahar.png", height: 250,),

                SizedBox(height: 20,),
                SpinKitThreeBounce(
                  color: Colors.white,
                  size: 40.0,
                ),
              ],
            )
          )
      ),

    );
  }



}
