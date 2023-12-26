import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/custom_textfield.dart';
import '../../../component/text_Style.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.all(25.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Contact info",style: headerStyle,),
            CustomTextfield(hintText: "Enter Name",),
            CustomTextfield(hintText: "Enter Phone Number ",),
          ],
        ),
      ),
    );
  }
}
