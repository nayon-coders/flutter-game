import 'package:flutter/material.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:sizer/sizer.dart';

class SettingListTile extends StatelessWidget{
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final bool isSelected;
  const SettingListTile({Key? key, required this.title, required this.icon, required this.onTap, required this.onLongPress, required this.isSelected}) : super(key: key);


  Widget build(BuildContext context) {
    return  ListTile(
      onTap: onTap,
      onLongPress:onLongPress,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$title',
            style: TextStyle(
                color: appColors.white,
                fontWeight: FontWeight.w700,
                fontSize: 10.sp,
                fontFamily: "Nanu"
            ),
          ),
          SizedBox(height: 4,),
          isSelected ? Container(
            height: 2,
            color: appColors.red,
          ): Container(),
        ],
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: appColors.white,
      ),
      leading: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xFF31375E)
          ),
          child: Icon(icon, color: appColors.white,)),

    );
  }
}
