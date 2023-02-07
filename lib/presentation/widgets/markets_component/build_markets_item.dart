import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import 'package:tawredat/core/assets_path/images_path.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';
import '../../../core/app_router/screen_names.dart';
import '../../../core/assets_path/fonts_path.dart';

class MarketsContainer extends StatelessWidget {
  const MarketsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.0.h),
      child: InkWell(
        onTap:(){Navigator.pushNamed(context, ScreenName.marketDetailsScreen);},
        child: Container(
          height: 210.h,
          width: double.infinity,
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
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 102.h,
                    width: double.infinity,
                    child: Image.asset(
                      ImagesPath.dummy2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 102.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.transparent,
                      AppColors.primaryColor.withOpacity(0.8),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  ),
                  Positioned(
                    top: 8.h,
                    left: 8.w,
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          SvgPath.share,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagesPath.marketLogo,
                      height: 56.h,
                      width: 74.w,
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
                              'يتم وضع اسم المتجر هنا يتم وضع اسم المتجر هنا',
                              style: TextStyle(
                                fontFamily: FontsPath.tajawalRegular,
                                color: Colors.black,
                                fontSize: 12.sp,
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
                                fontFamily: FontsPath.tajawalRegular,
                                color: Colors.black,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
