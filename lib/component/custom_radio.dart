import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intenship_proj2/color/color.dart';

class CustomRadioButton extends StatelessWidget {

    var groupvalue;
    var defaultvalue;
    final ValueChanged onChanged;
    String radioText;

    CustomRadioButton({required this.groupvalue,required this.defaultvalue,required this.onChanged,required this.radioText});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Radio(value: defaultvalue, groupValue: groupvalue, onChanged: (value) {
          onChanged(value);
        },),
        Text(radioText,style: TextStyle(color: Colors.black.withOpacity(0.6)),),
      ],
    );

  }
}
