import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/custom_drop_down.dart';
import '../../../component/custom_textfield.dart';
import '../../../component/text_Style.dart';

class AddressInfo extends StatelessWidget {

  List State = ["State","Gujarat","Rajsthan","Mumbai","Tamilnadu"];
  String DefaultState = "State";

  @override
  Widget build(BuildContext context) {
    return     Container(
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.all(25.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Address info",style: headerStyle,),
            CustomTextfield(hintText: "Flat no/Building Name",),
            CustomTextfield(hintText: "Address line 1",),
            CustomTextfield(hintText: "Locality/Area/Street",),
            CustomTextfield(hintText: "Landmark(Optional)",),
            CustomDropdown(defaultvalue:DefaultState,items: State,onChanged: (value){
              DefaultState = value;
            }, ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextfield(width: 140,hintText: "Pincode",),
                CustomTextfield(width: 140,hintText: "City",),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
