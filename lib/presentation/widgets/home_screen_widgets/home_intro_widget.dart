import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';

class HomeIntroWidget extends StatelessWidget {
  final String name;
  const HomeIntroWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('أهلاً $name',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: FontsPath.tajawalBold,
                    color: Colors.black)),
            SizedBox(
              height: 10.h,
            ),
            Text('نتمني لك يوم سعيد',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: FontsPath.tajawalLight,
                    color: Colors.black)),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.h,
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
              backgroundColor: Colors.white,
              foregroundColor: AppColors.primaryColor,
            ),
            child: Center(
              child: SvgPicture.asset(
                SvgPath.cart,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
