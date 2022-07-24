import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/sign-up/sign-up.dart';
import 'package:sizer/sizer.dart';import '../../widgets/button.dart';
import '../../widgets/left-logo.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _loginKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 0, right: 30, top: 30, bottom: 30),
        width: width,
        height: height,
        color: appColors.mainColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            //TODO: Left site design

            // Left side logo
            LeftLogo(text: "Please sign in to continue",),
            //left side logo end

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: width/2.5,
              child: ListView(
                children: [
                  Text("Sign In",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Nanu",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                        color: appColors.red
                    ),
                  ),
                  SizedBox(height: 10,),
                  Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: appColors.white,
                              ),
                              filled: true,
                              fillColor: appColors.grey,
                              contentPadding: EdgeInsets.only(left: 20, right: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide.none
                              ),

                            ),
                            controller: _email,
                            validator: (value){
                              if(value!.isEmpty){
                                return "Email field must not be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: appColors.white,
                              ),
                              filled: true,
                              fillColor: appColors.grey,
                              contentPadding: EdgeInsets.only(left: 20, right: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide.none
                              ),

                            ),
                            controller: _pass,
                            validator: (value){
                              if(value!.isEmpty){
                                return "Password field must not be empty";
                              }
                              return null;
                            },
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                                onPressed: (){},
                                child: Text("Forget Password?",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: appColors.white
                                  ),
                                )
                            ),
                          )
                        ],
                      )
                  ),
                  AppButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    text: 'SIGN IN',
                  ),

                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topRight,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text:"I don't have an account?",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: appColors.white
                            ),
                          ),
                          TextSpan(
                            text: ' SIGN UP',
                            style: TextStyle(
                              color: appColors.red,
                                fontFamily: "Nanu",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),


                    ),
                  )
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}

