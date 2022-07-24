import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/OTP/otp.dart';
import 'package:sizer/sizer.dart';import '../../widgets/button.dart';
import '../../widgets/left-logo.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _loginKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _gender = TextEditingController();
  final _dob = TextEditingController();
  final _number = TextEditingController();
  final _pass = TextEditingController();

  final _currencies = [
    "Male",
    "female",
    "Others"
  ];
  var _currentSelectedValue;

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
            LeftLogo(text: "Please sign up to continue",),
            //left side logo end

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: width/2.5,
              child: ListView(
                children: [
                  Text("Sign Up",
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
                    key: _loginKey,
                      child: Column(
                        children: [
                          //TODO: Name input field
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Full Name",
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
                            controller: _name,
                            validator: (value){
                              if(value!.isEmpty){
                                return "Email field must not be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10,),
                          //TODO: Gender input field
                          InputDecorator(
                            decoration: InputDecoration(
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
                            isEmpty: _currentSelectedValue == "",
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint:Text( "Gender"),

                                style: TextStyle(
                                  color: appColors.white,
                                ),
                                dropdownColor: appColors.grey,
                                value: _currentSelectedValue,
                                isDense: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    _currentSelectedValue = newValue;

                                  });
                                },
                                items: _currencies.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value, style: TextStyle(
                                      color: appColors.white,
                                    ),),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          //TODO: Dob input field
                          TextFormField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              hintText: "DD/MM/YYYY",
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
                            controller: _dob,
                            // onTap: () async {
                            //   DateTime? date = DateTime(1900);
                            //   FocusScope.of(context).requestFocus(
                            //       new FocusNode());
                            //
                            //   date = await showDatePicker(
                            //       context: context,
                            //       initialDate: DateTime.now(),
                            //       firstDate: DateTime(1900),
                            //       lastDate: DateTime(2100));
                            //   print(date);
                            // },

                            validator: (value){
                              if(value!.isEmpty){
                                return "Date Of Birth field must not be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10,),
                          //TODO: Email input field
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "E-mail",
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
                          //TODO: Phone Number input field
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Phone Number",
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
                            controller: _number,
                            validator: (value){
                              if(value!.isEmpty){
                                return "Phone Number field must not be empty";
                              }
                              return null;
                            },
                          ),
                          //TODO: Password input field
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
                          //TODO: Confirm Password input field
                          SizedBox(height: 10,),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
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

                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  AppButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));
                    },
                    text: 'SIGN UP',
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topRight,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text:"I have an account ",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: appColors.white
                            ),
                          ),
                          TextSpan(
                            text: ' SIGN IN',
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

