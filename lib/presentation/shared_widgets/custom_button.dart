import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/assets_path/fonts_path.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Function isTapped;
  final double? height;
  final double width;

  const CustomButton(
      {Key? key,
        required this.buttonTitle,
        required this.isTapped,
        required this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // <-- Radius
          ),
          padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 16.h),
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
                fontSize: 14.sp),
          ),
        ),
      ),
    );
  }
}
