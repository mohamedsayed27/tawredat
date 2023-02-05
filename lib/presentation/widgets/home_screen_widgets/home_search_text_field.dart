import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';

class HomeSearchTextField extends StatelessWidget {
  const HomeSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder outLinedInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(2.r),
        borderSide: const BorderSide(
            color: AppColors.authTextFieldFillColor));
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              offset: const Offset(0, 0),
              blurRadius: 20.r)
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            border: outLinedInputBorder,
            enabledBorder: outLinedInputBorder,
            focusedBorder: outLinedInputBorder,
            prefixIcon: Padding(
              padding: EdgeInsets.all(12.0.r),
              child: SvgPicture.asset(
                SvgPath.search,
              ),
            ),
            hintText: 'بحث',
            hintStyle:
            const TextStyle(fontFamily: FontsPath.tajawalRegular)),
      ),
    );
  }
}
