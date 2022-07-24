import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/widgets/button.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({Key? key}) : super(key: key);

  @override
  State<MoreOptions> createState() => _MoreOptionsState();
}

class _MoreOptionsState extends State<MoreOptions> {
  final _aboutKey = GlobalKey<FormState>();
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
    return Container(
      margin: EdgeInsets.only( right: 20, left: 20),
      child: Form(
          key: _aboutKey,
          child: ListView(
            children: [

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
                    borderSide: BorderSide.none,
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
                    borderSide: BorderSide.none,
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
                    borderSide: BorderSide.none,
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

              Container(
                margin: EdgeInsets.only(left: 150, top: 30, bottom: 30),
                child: AppButton(
                    fontSize: 13,
                    borderRadious: 100,
                    text: "Save",
                    onPressed: (){

                    }
                ),
              )
            ],
          )
      ),
    );
  }
}
