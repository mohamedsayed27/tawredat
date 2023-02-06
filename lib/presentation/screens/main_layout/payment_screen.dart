import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            children: [
              SizedBox(
                height: 56.h,
              ),
              Row(
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
                  Expanded(
                    child: Text(
                      'تكملة الطلب',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontsPath.tajawalMedium,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 34.w,
                    height: 34.h,
                  )
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'شحن الي',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontsPath.tajawalBold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'تغير العنوان',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: FontsPath.tajawalRegular,
                      color: const Color(0xff848484),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              Container(
                height: 110.h,
                width: double.infinity,
                padding: EdgeInsets.only(
                  right: 20.w,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(
                      width: 0.7.w,
                      color: const Color(0xff848484).withOpacity(0.3),
                    )),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      SvgPath.location,
                      width: 24.w,
                      height: 24.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'المنزل',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: FontsPath.tajawalBold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 7.w,
                          ),
                          Text(
                            'توصيل الي: منزلي, الرياض , السعودية',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: FontsPath.tajawalRegular,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 7.w,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle,size: 15.r,color: Colors.green,),
                              Text(
                                '01222222222',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: FontsPath.tajawalRegular,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'اخترطريقة الدفع',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: FontsPath.tajawalBold,
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
