import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intenship_proj2/component/custom_button.dart';
import 'package:intenship_proj2/component/custom_textfield.dart';
import 'package:intenship_proj2/view/change_password_view/component/changepasswordComponent.dart';

import '../../component/text_Style.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5.sp,),
                Icon(Icons.arrow_back,size: 30.sp,),
                SizedBox(width: 40.sp,),
                Center(child: Text("Change Password",style: appBarTextStyle)),
              ],
            ),
            ChangePasswordComponent(),
          ],
        ),
      ),
    );
  }
}
