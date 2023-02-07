import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/app_router/screen_names.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/images_path.dart';
import '../../../core/assets_path/svg_path.dart';

class MarketDetailsIntroWidget extends StatelessWidget {
  const MarketDetailsIntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 360.h,
          width: double.infinity,
          color: Colors.white,
        ),
        Stack(
          children: [
            SizedBox(
              height: 298.h,
              width: double.infinity,
              child: Image.asset(
                ImagesPath.dummy2,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 298.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        AppColors.primaryColor.withOpacity(0.8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ],
        ),
        Positioned(
          top: 60.h,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 34.w,
                      height: 34.h,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: AppColors.primaryColor,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: AppColors.primaryColor,
                          size: 15.r,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30.w,
                          height: 30.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, ScreenName.searchScreen);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              foregroundColor: AppColors.primaryColor,
                            ),
                            child: SvgPicture.asset(SvgPath.search,color: AppColors.primaryColor,width: 24.w,height: 24.h,),
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        SizedBox(
                          width: 30.w,
                          height: 30.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              foregroundColor: AppColors.primaryColor,
                            ),
                            child: SvgPicture.asset(SvgPath.share,color: AppColors.primaryColor,width: 24.w,height: 24.h,),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 37.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height:75.h,
                      width: 75.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle
                      ),
                      child: Image.asset(
                        ImagesPath.marketLogo,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 9.h,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 50.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'الأوائل للأدوات الطبيه الأوائل',
                              style: TextStyle(
                                fontFamily: FontsPath.tajawalBold,
                                color: Colors.white,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  itemSize: 20.r,
                                  ignoreGestures: true,
                                  initialRating: 4.5,
                                  minRating: 1,
                                  unratedColor: Colors.grey.withOpacity(0.6),
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star_border,
                                    color: AppColors.secondaryColor,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                                Text('(4.5)',
                                    style: TextStyle(
                                        fontFamily: FontsPath.tajawalRegular,
                                        fontSize: 12.sp,
                                        color: AppColors.secondaryColor)),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'الحد الادني للشراء 50 قطعة',
                              style: TextStyle(
                                fontFamily: FontsPath.tajawalBold,
                                color: Colors.white,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBox(title: 'التقيم الكلي للمتحر', widget: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          itemSize: 20.r,
                          ignoreGestures: true,
                          initialRating: 4.5,
                          minRating: 1,
                          unratedColor: Colors.grey.withOpacity(0.6),
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          // itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star_border,
                            color: AppColors.secondaryColor,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        Text('(4.5)',
                            style: TextStyle(
                                fontFamily: FontsPath.tajawalRegular,
                                fontSize: 12.sp,
                                color: AppColors.secondaryColor)),
                      ],
                    ),),
                    CustomBox(title: 'عدد العملاء', widget: Text('+3K',style: TextStyle(color: Colors.green,fontSize: 12.sp),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Widget CustomBox({required String title, required Widget widget}){
    return Container(
      height: 78.h,
      width: 182.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 10.r,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: FontsPath.tajawalRegular,
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 13.h,),
          widget
        ],
      ),
    );
  }

}
