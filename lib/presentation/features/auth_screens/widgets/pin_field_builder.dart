import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';

class PinFieldBuilder extends StatelessWidget {
  final TextEditingController controller;
  const PinFieldBuilder({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
        controller: controller,
        appContext: context,
        length: 4,
        autoFocus: false,
        cursorColor: Colors.black,
        obscureText: false,
        keyboardType: TextInputType.phone,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(11.r),
          fieldHeight: 63.h,
          fieldWidth: 63.w,
          borderWidth: 0.5.w,
          activeFillColor:AppColors.authTextFieldFillColor,
          selectedFillColor: AppColors.authTextFieldFillColor,
          activeColor: AppColors.authTextFieldFillColor,
          inactiveColor: AppColors.authTextFieldFillColor,
          inactiveFillColor: AppColors.authTextFieldFillColor,
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        enableActiveFill: true,
        onCompleted: (code) {},
        onChanged: (value) {});
  }
}
