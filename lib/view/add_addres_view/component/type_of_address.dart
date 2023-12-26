import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intenship_proj2/view_model/addaddressviewmodel/add_address_view_model.dart';

import '../../../component/custom_button.dart';
import '../../../component/custom_checkbox.dart';
import '../../../component/custom_radio.dart';
import '../../../component/text_Style.dart';

class TypeofAddress extends StatelessWidget {

  String Address="Home";
  AddaddressViewModel controller=Get.put(AddaddressViewModel());

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.all(25.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Type of Address",style: headerStyle,),
            SizedBox(height: 5.h,),
            Obx(() =>Row(
              children: [
                CustomRadioButton(groupvalue: controller.RadioButtonGroupValue.value, defaultvalue: "Home", onChanged: (value) {
                  controller.RadioButtonGroupValue.value=value;
                }, radioText: "Home"),
                CustomRadioButton(groupvalue: controller.RadioButtonGroupValue.value, defaultvalue: "Office", onChanged: (value) {
                  controller.RadioButtonGroupValue.value=value;
                }, radioText: "Office"),
                CustomRadioButton(groupvalue: controller.RadioButtonGroupValue.value, defaultvalue: "Other", onChanged: (value) {
                  controller.RadioButtonGroupValue.value=value;
                }, radioText: "Other"),

              ],
            ),),
            SizedBox(height: 5.h,),
            Obx(() =>  CustomCheckBox(defaultvalue: controller.CheckBoxValue.value, onChanged: (value) {
              controller.CheckBoxValue.value=value!;
            }, chktext: "Make default address"), ),
            SizedBox(height: 10.h,),
            CustomButton(width: 300,btnName: "Save Address",height: 40),
          ],
        ),
      ),
    );
  }
}
