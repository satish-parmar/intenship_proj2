import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intenship_proj2/color/color.dart';

class CustomTextfield extends StatelessWidget {

  String hintText;
  double? height,width;
  String labelText;
  TextEditingController? controller;

  CustomTextfield({required this.hintText, this.height =40, this.width, this.controller,this.labelText=""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText,style: TextStyle(color: Colors.black,fontSize: 19.sp),),
        Container(
          margin: EdgeInsets.only(top: 15.sp),
          decoration: BoxDecoration(
            color: TextfieldColor,
            borderRadius: BorderRadius.circular(10)
          ),
          height: height?.h,
          width: width?.w,
          child: TextFormField(
            controller: controller,
            decoration:InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.0),
              border: InputBorder.none,
              hintText: hintText,
              helperStyle: TextStyle(color: Colors.grey.withOpacity(0.9),)
            ),
          ),
        ),
      ],
    );
  }
}
