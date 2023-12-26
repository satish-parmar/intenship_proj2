import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/custom_button.dart';
import '../../../component/custom_textfield.dart';

class ChangePasswordComponent extends StatelessWidget {
  const ChangePasswordComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.sp),
      child: Column(
        children: [
          SizedBox(height: 40.h,),
                CustomTextfield(hintText: "Enter Your Password",labelText: "Current Password"),
                SizedBox(height: 30.h,),
                CustomTextfield(hintText: "Enter Your Password",labelText: "New Password"),
                SizedBox(height: 30.h,),
                CustomTextfield(hintText: "Enter Your Password",labelText: "Confirm New Password"),
          SizedBox(height: 180.h,),
          CustomButton(btnName: "Change Password",height: 35.h,width: 270.w,)
        ],
      ),
    );
  }
}
