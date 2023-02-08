import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tawredat/core/app_router/screen_names.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../widgets/shared_widgets/custom_background.dart';
import '../../../widgets/shared_widgets/custom_button.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomBackground(
        screenTitle: 'محفظتي',
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                height: 220.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 20.r,
                          color: Colors.black.withOpacity(0.2)
                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'رصيدك في المحفظة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontsPath.tajawalRegular,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 35.h,),
                    Text(
                      ' 2000 ريال سعودي',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: FontsPath.tajawalBold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 35.h,),
                    CustomButton(
                        buttonTitle: 'شحن المحفظة',
                        isTapped: () {
                          Navigator.pushNamed(context, ScreenName.chargeWallet);
                        },
                        width: double.infinity),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                'اخر عمليات تمت علي المحفظه',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: FontsPath.tajawalRegular,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h,),
              Expanded(child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 15.h),
                itemBuilder: (BuildContext context, int index) {
                  return WalletContainer(index);
                },itemCount: 8,)),
            ],
          ),
        ),
      ),
    );
  }

  Widget WalletContainer(int index) {
    return Padding(
      padding: EdgeInsets.only(top: index!=0?15.h:0,bottom: 15.h,left: 15.w,right: 15.w),
      child: Container(
        height: 88.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 20.r,
                  color: Colors.black.withOpacity(0.15)
              )
            ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_upward_rounded, color: Colors.green, size: 30.r,),
            SvgPicture.asset(SvgPath.dollar, width: 31.w, height: 47.h,),
            SizedBox(width: 10.w,),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'عملية شحن',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: FontsPath.tajawalMedium,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '18-8-2020',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontFamily: FontsPath.tajawalBold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.w,),
                    Expanded(
                      child: Text(
                        'قمت بشحن محفظتك بقيمة "212"ريال سعودي بتاريخ 12/11/2022',
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: FontsPath.tajawalRegular,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
