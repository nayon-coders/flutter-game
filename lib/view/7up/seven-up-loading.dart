
import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/7up/7up.dart';
import '../../widgets/game-loading.dart';

class SevenUpLoading extends StatefulWidget {
  const SevenUpLoading({Key? key}) : super(key: key);

  @override
  State<SevenUpLoading> createState() => _SevenUpLoadingState();
}

class _SevenUpLoadingState extends State<SevenUpLoading> with TickerProviderStateMixin {
  late AnimationController controller;


  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: false);
    controller.forward().then((value) => {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SevenUp())),
    });



    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  var value;


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColors.mainColor,
      body:  GameLoading(width: width, height: height, controller: controller),

    );
  }



}

