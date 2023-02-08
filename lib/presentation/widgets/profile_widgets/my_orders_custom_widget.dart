import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import 'package:tawredat/core/assets_path/images_path.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';
import '../../../core/assets_path/fonts_path.dart';

class MyOrderItemBuilder extends StatelessWidget {
  const MyOrderItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h,left: 15.w,right: 15.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
        height: 205.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: const Offset(0, 0),
              blurRadius: 20.r,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '5:34 م #2132131 تم حجزه يوم12/11/2022',
                  style: TextStyle(
                    fontFamily: FontsPath.tajawalRegular,
                    color: Colors.grey,
                    fontSize: 10.sp,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'عرض التفاصيل',
                      style: TextStyle(
                        fontFamily: FontsPath.tajawalRegular,
                        color: Colors.grey,
                        fontSize: 10.sp,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondaryColor,
                      size: 14.r,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImagesPath.dummy1,
                  height: 75.h,
                  width: 88.w,
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
                        Text('يتم وضع اسم المنتج هنا يتم وضع اسم المنتج هنا',
                            style: TextStyle(
                                fontFamily: FontsPath.tajawalRegular,
                                color: Colors.black,
                                fontSize: 12.sp)),
                        SizedBox(
                          height: 9.h,
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
                          height: 8.h,
                        ),
                        Text(
                          'متجر : :الأول للأدوات الطبيه',
                          style: TextStyle(
                            fontFamily: FontsPath.tajawalRegular,
                            color: Colors.grey,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'تم التوصيل',
                          style: TextStyle(
                            fontFamily: FontsPath.tajawalRegular,
                            color: Colors.green,
                            fontSize: 12.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Expanded(child: CustomButton(
                  buttonTitle: 'قيم المتجر',
                  isTapped: () {},
                  width: double.infinity,
                  height: 30.h,
                  buttonColor: const Color(0xff004AAD).withOpacity(0.34),
                  buttonOverLayColor: Colors.white,
                  textColor: AppColors.primaryColor,
                  paddingVertical: 5.h,
                  paddingHorizontal: 0.w,
                  fontSize: 10.sp,
                )),
                SizedBox(width: 10.w,),
                Expanded(child: CustomButton(
                  buttonTitle: 'قيم المنتج',
                  isTapped: () {},
                  width: double.infinity,
                  height: 30.h,
                  buttonColor: const Color(0xff004AAD).withOpacity(0.34),
                  buttonOverLayColor: Colors.white,
                  textColor: AppColors.primaryColor,
                  paddingVertical: 5.h,
                  paddingHorizontal: 0.w,
                  fontSize: 10.sp,
                )),
                SizedBox(width: 10.w,),
                Expanded(child: CustomButton(
                  buttonTitle: 'قيم الدليفري',
                  isTapped: () {},
                  width: double.infinity,
                  height: 30.h,
                  buttonColor: const Color(0xff004AAD).withOpacity(0.34),
                  buttonOverLayColor: Colors.white,
                  textColor: AppColors.primaryColor,
                  paddingVertical: 5.h,
                  paddingHorizontal: 0.w,
                  fontSize: 10.sp,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
