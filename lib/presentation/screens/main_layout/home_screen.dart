import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../widgets/home_screen_widgets/custom_category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          SizedBox(height: 70.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('أهلاً أحمد',
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
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          offset: const Offset(0, 0),
                          blurRadius: 20.r)
                    ]),
                child: Center(
                  child: SvgPicture.asset(
                    SvgPath.cart,
                    color: AppColors.primaryColor,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 43.h,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(0, 0),
                      blurRadius: 20.r)
                ],),
            child: TextField(
              decoration: InputDecoration(
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
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.0.r),
                    child: SvgPicture.asset(
                      SvgPath.search,
                    ),
                  ),
                  hintText: 'بحث',
                  hintStyle: const TextStyle(fontFamily: FontsPath.tajawalRegular)),
            ),
          ),
          SizedBox(height: 20.h,),
          SizedBox(height: 24.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              CustomCategoryWidget(title: 'الافضل مبيعا', icon: SvgPath.spark),
              CustomCategoryWidget(title: 'المفضلة', icon: SvgPath.favorite),
              CustomCategoryWidget(title: 'العروض', icon: SvgPath.percentageSquare),
              CustomCategoryWidget(title: 'إعادة الطلب', icon: SvgPath.rotateLinear),
            ],
          ),
          SizedBox(height: 21.h,),
        ],
      ),
    );
  }
}
