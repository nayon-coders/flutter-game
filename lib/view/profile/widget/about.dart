import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/widgets/button.dart';

class AboutUser extends StatefulWidget {
  const AboutUser({Key? key}) : super(key: key);

  @override
  State<AboutUser> createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {
  final _aboutKey = GlobalKey<FormState>();
  final _number = TextEditingController();
  final _pass = TextEditingController();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _gender = TextEditingController();
  final _dob = TextEditingController();

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
                    borderSide: BorderSide.none,
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
                    borderSide: BorderSide.none,
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

                    hint:Text( "Gender", style: TextStyle(color: appColors.white),),

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
                      borderSide: BorderSide.none,
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
                      borderSide: BorderSide.none,
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
                      borderSide: BorderSide.none
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
              Container(
                margin: EdgeInsets.only(left: 150, top: 30, bottom: 30),
                child: AppButton(
                    borderRadious: 100,
                    fontSize: 13,
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
