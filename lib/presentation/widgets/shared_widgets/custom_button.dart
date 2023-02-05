import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets_path/fonts_path.dart';


class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Function isTapped;
  final double? height;
  final double width;
  final double paddingVertical;
  final double paddingHorizontal;

  const CustomButton(
      {Key? key,
        required this.buttonTitle,
        required this.isTapped,
        required this.width, this.height, this.paddingVertical=16, this.paddingHorizontal =45})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r), // <-- Radius
          ),
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal.w, vertical: paddingVertical.h),
        ),
        onPressed: () {
          isTapped();
        },

        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white,
                fontFamily: FontsPath.tajawalRegular,
                fontSize: 15.sp),
          ),
        ),
      ),
    );
  }
}
