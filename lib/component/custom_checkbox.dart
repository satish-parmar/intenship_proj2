import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBox extends StatelessWidget {

  var defaultvalue;
  ValueChanged<bool?> onChanged;
  String chktext;

  CustomCheckBox({required this.defaultvalue,required this.onChanged,required this.chktext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: defaultvalue, onChanged: (value) {
          onChanged(value);
        },),
        SizedBox(width: 1.w,),
        Text(chktext,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 15.sp),),
      ],
    );
  }
}
