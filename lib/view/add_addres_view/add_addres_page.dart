import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intenship_proj2/component/custom_button.dart';
import 'package:intenship_proj2/component/custom_checkbox.dart';
import 'package:intenship_proj2/component/custom_drop_down.dart';
import 'package:intenship_proj2/component/custom_radio.dart';
import 'package:intenship_proj2/component/custom_textfield.dart';
import 'package:intenship_proj2/component/text_Style.dart';
import 'package:intenship_proj2/view/add_addres_view/component/address_info.dart';
import 'package:intenship_proj2/view/add_addres_view/component/contact_info.dart';
import 'package:intenship_proj2/view/add_addres_view/component/type_of_address.dart';

import '../../color/color.dart';

class AddresPage extends StatefulWidget {
  const AddresPage({super.key});

  @override
  State<AddresPage> createState() => _AddresPageState();
}

class _AddresPageState extends State<AddresPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BackGroundColor,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 25.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10.sp,),
                Icon(Icons.arrow_back,size: 30.sp,),
                SizedBox(width: 75.sp,),
                Center(child: Text("Add Address",style: appBarTextStyle)),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          ContactInfo(),
          SizedBox(height: 25.h,),
          AddressInfo(),
          SizedBox(height: 25.h,),
          TypeofAddress(),
        ],
      ),
    ),
    );
  }
}
