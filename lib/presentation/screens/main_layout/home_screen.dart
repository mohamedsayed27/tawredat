import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/app_router/screen_names.dart';
import 'package:tawredat/core/assets_path/images_path.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../widgets/home_screen_widgets/custom_category_widget.dart';
import '../../widgets/home_screen_widgets/home_intro_widget.dart';
import '../../widgets/home_screen_widgets/home_search_text_field.dart';
import '../../widgets/home_screen_widgets/last_seen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          SizedBox(
            height: 60.h,
          ),
          const HomeIntroWidget(name: 'أحمد',),
          SizedBox(
            height: 43.h,
          ),
          const HomeSearchTextField(),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 105.h,
            width: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Image.asset(
              ImagesPath.firstImage,
              fit: BoxFit.cover,
              height: 100.h,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCategoryWidget(title: 'الافضل مبيعا', icon: SvgPath.spark, onTap: () {  },),
              CustomCategoryWidget(title: 'المفضلة', icon: SvgPath.favorite, onTap: () { Navigator.pushNamed(context, ScreenName.favoritesScreen); },),
              CustomCategoryWidget(
                  title: 'العروض', icon: SvgPath.percentageSquare, onTap: () {  },),
              CustomCategoryWidget(
                  title: 'إعادة الطلب', icon: SvgPath.rotateLinear, onTap: () {  },),
            ],
          ),
          SizedBox(
            height: 34.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 140.h,
              ),
              Container(
                height: 117.h,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image.asset(
                      ImagesPath.secondImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w, left: 130.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'اشترك في نظام ادارة وتنظيم المشتريات للعيادات و الاقسام الصحية',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: FontsPath.tajawalBold,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'املأ الفورم وسنتواصل معك',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: FontsPath.tajawalBold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          CustomButton(
                            buttonOverLayColor: AppColors.primaryColor,
                            buttonTitle: 'أبدا الان',
                            isTapped: () {},
                            height: 30.h,
                            width: 75.w,
                            paddingVertical: 0,
                            paddingHorizontal: 2,
                            buttonColor: Colors.white,
                            textColor: AppColors.primaryColor,
                            fontSize: 12.sp,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 35.w,
                child: Image.asset(ImagesPath.saudiGuy,height: 175.h,width: 76.w,),
              ),
            ],
          ),
          SizedBox(
            height: 35.7.h,
          ),
          LastSeenWidget(),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
