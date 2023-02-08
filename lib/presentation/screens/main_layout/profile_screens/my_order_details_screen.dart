import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_background.dart';

import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/images_path.dart';
import '../../../widgets/shared_widgets/custom_button.dart';

class MyOrderDetailsScreen extends StatelessWidget {
  const MyOrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomBackground(
        screenTitle: 'تفاصيل الطلب',
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              SizedBox(
                height: 127.h,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 0),
                            blurRadius: 20.r,
                            color: Colors.black.withOpacity(0.2))
                      ]),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'طلب رقم -3423423432',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: FontsPath.tajawalMedium,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text(
                                'تم حجزه يوم12/11/2022',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalRegular,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 26.5.h),
                        const Divider(),
                        SizedBox(height: 19.5.h),
                        Text(
                          'عنوان التوصيل',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontsPath.tajawalMedium,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          children: [
                            SvgPicture.asset(SvgPath.location,width: 24.w,height: 24.h,),
                            SizedBox(width: 10.w,),
                            Text(
                              'منزلي, الرياض , السعودية',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: FontsPath.tajawalRegular,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.5.h),
                        const Divider(),
                        SizedBox(height: 19.5.h),
                        Text(
                          'رقم الهاتف',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontsPath.tajawalMedium,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(SvgPath.phone,width: 24.w,height: 24.h,),
                            SizedBox(width: 10.w,),
                            Text(
                              '01111111111',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: FontsPath.tajawalRegular,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.5.h),
                        const Divider(),
                        SizedBox(height: 19.5.h),
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
                        ),
                        SizedBox(height: 26.5.h),
                        const Divider(),
                        SizedBox(height: 19.5.h),
                        Text(
                          'طريقة الدفع',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontsPath.tajawalMedium,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          children: [
                            SvgPicture.asset(SvgPath.wallet,width: 24.w,height: 24.h,),
                            SizedBox(width: 10.w,),
                            Text(
                              'دفع عن طريق باي بال',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: FontsPath.tajawalRegular,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.5.h),
                        const Divider(),
                        SizedBox(height: 19.5.h),
                        Text(
                          'طريقة الدفع',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontsPath.tajawalMedium,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'التكلفه الجزئية ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalMedium),
                            ),
                            Text(
                              '444 رس',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalBold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'تكلفة التوصيل',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalMedium),
                            ),
                            Text(
                              '444 رس',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalBold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'الضريبة المضافه',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalMedium),
                            ),
                            Text(
                              '444 رس',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalBold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'التكلفه الكليه',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily: FontsPath.tajawalBold),
                            ),
                            Text(
                              '444 رس',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14.sp,
                                  fontFamily: FontsPath.tajawalBold),
                            ),

                          ],
                        ),
                        SizedBox(height: 20.h,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
