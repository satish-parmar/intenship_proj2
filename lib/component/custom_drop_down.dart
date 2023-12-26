import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intenship_proj2/color/color.dart';

class CustomDropdown extends StatelessWidget {
  List items;
  var defaultvalue;
  final ValueChanged? onChanged;

  CustomDropdown({required this.items,required this.defaultvalue,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.sp),
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
            color: TextfieldColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: DropdownButtonFormField(
          icon: Icon(Icons.arrow_downward_outlined),
          iconSize: 30.sp,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 10.0)
          ),
          value:defaultvalue,
          onChanged:(value) {
            onChanged!(value);
          },
          items: items.map((e) {
            return DropdownMenuItem(value: e, child: Text(e,style: TextStyle(color:Colors.black.withOpacity(0.6)),),);
          }).toList(),
        ),
      ),
    );
  }
}
