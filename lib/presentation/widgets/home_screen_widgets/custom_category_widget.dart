import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';

class CustomCategoryWidget extends StatelessWidget {
  final String title;
  final String icon;

  const CustomCategoryWidget(
      {Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 91.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              offset: const Offset(0, 0),
              blurRadius: 20.r)
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primaryColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                color: AppColors.primaryColor,
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: FontsPath.tajawalRegular,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
