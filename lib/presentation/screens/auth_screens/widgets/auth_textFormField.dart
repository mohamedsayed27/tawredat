import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';

class AuthTextFormField extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validate;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final int maxLength;
  const AuthTextFormField({Key? key, required this.hintText, this.validate, this.suffix, required this.controller, this.keyboardType = TextInputType.text, this.maxLength = 100, this.prefix,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      keyboardType: keyboardType,
      controller: controller,
      validator: validate,
      decoration: InputDecoration(
        counter: const SizedBox.shrink(),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.r),
            borderSide: const BorderSide(
                color: AppColors.authTextFieldFillColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.r),
            borderSide: const BorderSide(
                color: AppColors.authTextFieldFillColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.r),
            borderSide: const BorderSide(
                color: AppColors.authTextFieldFillColor)),
        filled: true,
        fillColor: AppColors.authTextFieldFillColor,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14.sp,
            fontFamily: FontsPath.tajawalRegular),
        suffixIcon: suffix,
        prefixIcon: prefix,
        contentPadding: EdgeInsets.all(17.r),
      ),
    );
  }
}
