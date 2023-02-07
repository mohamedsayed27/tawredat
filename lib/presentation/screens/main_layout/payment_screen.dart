import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/app_router/screen_names.dart';
import 'package:tawredat/core/assets_path/images_path.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../../core/enums/payment_type_enum.dart';
import '../../widgets/shared_widgets/custom_button.dart';
import '../../widgets/shared_widgets/payment_type_widget.dart';

// ignore: must_be_immutable
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);
  PaymentTypeEnum paymentType = PaymentTypeEnum.visa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                              Icon(
                                Icons.check_circle,
                                size: 15.r,
                                color: Colors.green,
                              ),
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
              SizedBox(height: 32.h,),
              Text(
                'اخترطريقة الدفع',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: FontsPath.tajawalBold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15.h,),
              StatefulBuilder(
                builder: (BuildContext context,
                    void Function(void Function()) setState) {
                  return Column(
                    children: [
                      PaymentTypeWidget(
                          onChanged: (val){
                            setState((){
                              paymentType = val!;
                            });
                          },
                          paymentTypeEnum: PaymentTypeEnum.mada,
                          paymentTypeEnumGroupedBy: paymentType,
                          title: 'مدي',
                          imagePath: ImagesPath.mada,
                          imageHeight: 41.h,
                          imageWidth: 41.w),
                      SizedBox(height: 20.h,),
                      PaymentTypeWidget(
                          onChanged: (val){
                            setState((){
                              paymentType = val!;
                            });
                          },
                          paymentTypeEnum: PaymentTypeEnum.visa,
                          paymentTypeEnumGroupedBy: paymentType,
                          title: 'فيزا',
                          imagePath: ImagesPath.visa,
                          imageHeight: 21.h,
                          imageWidth: 36.w),
                      SizedBox(height: 20.h,),
                      PaymentTypeWidget(
                        onChanged: (val){
                          setState((){
                            paymentType = val!;
                          });
                        },
                          paymentTypeEnum: PaymentTypeEnum.materCard,
                          paymentTypeEnumGroupedBy: paymentType,
                          title: 'ماستر كارد',
                          imagePath: ImagesPath.masterCard,
                          imageHeight: 21.h,
                          imageWidth: 34.w),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 273.h,
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 14.w),
        decoration: BoxDecoration(
          color: AppColors.authTextFieldFillColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'تكلفة الطلب',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: FontsPath.tajawalBold),
            ),
            itemBuilder(title: 'التكلفه الجزئية', price: '122 رس'),
            itemBuilder(title: 'تكلفة التوصيل', price: '22 رس'),
            itemBuilder(title: 'الضريبة المضافه', price: '150 رس'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'التكلفه الكليه',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 16.sp,
                      fontFamily: FontsPath.tajawalBold),
                ),
                Text(
                  '294 رس',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 16.sp,
                      fontFamily: FontsPath.tajawalBold),
                ),
              ],
            ),
            CustomButton(buttonTitle: 'تأكيد الاوردر', isTapped: (){Navigator.pushNamedAndRemoveUntil(context, ScreenName.mainLayout, (route) => false);}, width: double.infinity)
          ],
        ),
      ),
    );
  }

  Widget itemBuilder({required String title, required String price}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontFamily: FontsPath.tajawalMedium),
        ),
        Text(
          price,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 12.sp,
              fontFamily: FontsPath.tajawalBold),
        ),
      ],
    );
  }
}
