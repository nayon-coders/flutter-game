import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/profile/widget/about.dart';
import 'package:mboile_game/view/profile/widget/more.dart';
import 'package:mboile_game/widgets/button.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  void initState(){
    super.initState();
  }
  @override
  void dispose(){
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: appColors.mainColor,
        drawer: Drawer(
          child: Text("Menu"),
        ),

        body: Container(
            width: width,
            height: height,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/bg.png"),
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Left side
                  Expanded(
                    child: SizedBox(
                      height: height,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: height/10),
                            height: height/1.9,
                            width: width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: appColors.white
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                Icons.arrow_back_ios_rounded,
                                  color: appColors.grey,

                              ),
                          ),
                            )
                          ),

                          Positioned(
                            top: height/2,
                            left: 30,
                            child: Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(width: 5, color: Colors.white)
                                ),
                                child: Container(
                                    height: 95,
                                    width: 95,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        border: Border.all(width: 5, color: Colors.blue),
                                      image: DecorationImage(
                                        image: AssetImage("assets/image/profile.jpg",),
                                        fit:BoxFit.cover,
                                      ),
                                    ),
                                ),
                            ),
                          ),

                          Positioned(
                            bottom: height/8,
                              left: width/18,
                              child: Text("CodeCell",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: appColors.white,
                                    fontFamily: "Nanu",
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                          ),

                          Positioned(
                            bottom: height/4.5,
                            right: 30,
                            child: Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text("0",
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            color: appColors.white,
                                            fontFamily: "Nanu",
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text("Match Play",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: appColors.white,
                                            fontFamily: "Nanu",
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 30,),
                                  Column(
                                    children: [
                                      Text("0",
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            color: appColors.white,
                                            fontFamily: "Nanu",
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text("Amount",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: appColors.white,
                                            fontFamily: "Nanu",
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 50,),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height/12,
                          right: 40, left: 40),
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: appColors.red,
                          ),

                          child: TabBar(
                            labelColor: appColors.mainColor,
                              padding: EdgeInsets.all(0),
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: appColors.white
                              ),
                              tabs: [
                            Tab(text: "About",),
                            Tab(text: "More",)
                          ]),
                        ),

                        Expanded(
                          child: TabBarView(
                            children: [
                              AboutUser(),

                              MoreOptions()
                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                  //SizedBox(height: 140,),





                ],
              ),
            )
        ),
      ),
    );
  }
//created Slid Items
// Widget SlidItems(int index){
//   Matrix4 matrix4 = Matrix4.identity();
//   if(index == _currentPageValue.floor()){
//     var currentScal = 1-(_currentPageValue-index) * (1-_scalFactor);
//     var currentTrans = _height*(1-currentScal)/2;
//     matrix4 = Matrix4.diagonal3Values(1, currentScal, 1)..setTranslationRaw(1, currentTrans, 1);
//   }else if(index == _currentPageValue.floor()+1){
//     var currentScal = _scalFactor+(_currentPageValue-index+1)*(1-_scalFactor);
//     var currentTrans = _height*(1-currentScal)/2;
//     matrix4 = Matrix4.diagonal3Values(1, currentScal, 1)..setTranslationRaw(1, currentTrans, 1);;
//   }
//   return Stack(
//     children: [
//       Container(
//         height: 220,
//         transform: Matrix4.translationValues(0.0, 0.0, 0.0),
//         margin: EdgeInsets.only(left: 10,right: 10),
//         decoration: BoxDecoration(
//             color: appColors.red,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20),
//               topRight: Radius.circular(20),
//             ),
//             image: DecorationImage(
//                 image: NetworkImage(images[1]),
//                 fit: BoxFit.cover
//             )
//         ),
//       ),
//       Align(
//         alignment: Alignment.bottomLeft,
//         child: Container(
//           height: 50,
//           width: MediaQuery.of(context).size.width/2.3,
//           margin: const EdgeInsets.only(left: 10, right: 10),
//           padding: EdgeInsets.only(left: 50, right: 20,top: 10, bottom: 10),
//           decoration: BoxDecoration(
//             color: Color(0xff231750),
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20),
//             ),
//
//           ),
//           child: Text(
//             "ABC",
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 color: appColors.white,
//                 fontFamily: "Nanu",
//                 fontSize: 12.sp
//             ),
//           ),
//         ),
//       ),
//       Align(
//         alignment: Alignment.bottomRight,
//         child: Container(
//           height: 70,
//           width: MediaQuery.of(context).size.width/5,
//           margin: const EdgeInsets.only(left: 10, right: 10),
//           decoration: BoxDecoration(
//             color: Color(0xFF40FFAF),
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20),
//               topLeft: Radius.circular(20),
//             ),
//
//           ),
//           child: Center(
//             child: Text(
//               "More...",
//               style: TextStyle(
//                   color: appColors.mainColor,
//                   fontFamily: "Nanu",
//                   fontSize: 12.sp
//               ),
//             ),
//           ),
//         ),
//       )
//     ],
//   );
// }

}

