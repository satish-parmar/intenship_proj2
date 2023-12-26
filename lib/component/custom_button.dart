import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intenship_proj2/color/color.dart';

class CustomButton extends StatelessWidget {
  double height,width;
  String btnName;

  CustomButton({required this.height,required this.width,required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: BtnColor,
      ),
      child: Center(child: Text(btnName,style: TextStyle(fontSize: 18.sp,color: WhiteColor),)),
    );
  }

}
