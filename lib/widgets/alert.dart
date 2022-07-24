import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class showPopuUp{
  Future<void> _showPopUp(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            content: Container(
              width: 100,
              height: 180,
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                    size: 120,
                  ),
                  Text(
                    "Your request has been send",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.sp,

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