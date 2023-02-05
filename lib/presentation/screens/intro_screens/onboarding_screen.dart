import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tawredat/core/app_router/screen_names.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/images_path.dart';

class OnboardingModel {
  final String backGround;
  final String title;

  OnboardingModel({required this.backGround, required this.title});
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageViewController = PageController();
  bool isLast = false;
  List<OnboardingModel> boarding = [
    OnboardingModel(
      backGround: ImagesPath.onboarding1,
      title:
          'جميع مستلزماتك الطبية بارخصالاسعار و لاتنسى تشييك علىصفحة العروض ',
    ),
    OnboardingModel(
      backGround: ImagesPath.onboarding2,
      title:
          'تنظيم و ادارة مشترياتك صارت اسهل معانا مع تحديث مباشر للمخزون و فوري ',
    ),
    OnboardingModel(
      backGround: ImagesPath.onboarding3,
      title: 'اطلبها و نوصلها بنتابع كل طلبياتك لحد توصلك بكل عناية',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 30.h,
                    child: isLast
                        ? const SizedBox.shrink()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'تخطي',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: FontsPath.tajawalRegular,
                                    fontSize: 16.sp),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18.r,
                              ),
                            ],
                          ),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: boarding.length,
                    controller: pageViewController,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Image.asset(
                            boarding[index].backGround,
                            height: 283.h,
                            width: 283.w,
                          ),
                          SizedBox(
                            height: 126.h.h,
                          ),
                          Text(
                            boarding[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: FontsPath.tajawalBold,
                                fontSize: 20.sp),
                          )
                        ],
                      );
                    },
                    onPageChanged: (index) {
                      if (index == 2 && !isLast) {
                        setState(() {
                          isLast = true;
                        });
                      }
                      if (index == 1 || index == 0 && isLast) {
                        setState(() {
                          isLast = false;
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: SmoothPageIndicator(
                          controller: pageViewController,
                          count: boarding.length,
                          effect: ExpandingDotsEffect(
                            dotHeight: 8.h,
                            dotWidth: 8.w,
                            expansionFactor: 3,
                            spacing: 5.w,
                            activeDotColor: Colors.white,
                            dotColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if(isLast){
                          Navigator.pushNamed(context, ScreenName.loginAndRegisterScreen);

                        }else{
                          pageViewController.nextPage(duration: const Duration(milliseconds: 150), curve: Curves.fastOutSlowIn);

                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: AppColors.primaryColor,
                        shape: const CircleBorder(),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(8.r),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
