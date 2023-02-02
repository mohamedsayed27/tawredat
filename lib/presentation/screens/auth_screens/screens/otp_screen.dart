import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../shared_widgets/custom_button.dart';
import '../widgets/pin_field_builder.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('التفعيل',
            style: TextStyle(
                fontSize: 18.sp,
                fontFamily: FontsPath.tajawalRegular,
                color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 87.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('أدخل كود التأكيد المرسل لك على رقم الهاتف',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontsPath.tajawalRegular,
                            color: Colors.black)),
                    SizedBox(height: 5.h,),
                    Text('01000000000',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontsPath.tajawalBold,
                            color: AppColors.primaryColor)),

                  ],
                ),
              ),
              SizedBox(height: 32.h,),
              Directionality(
                textDirection: TextDirection.ltr,
                child: PinFieldBuilder(
                  controller: pinController,
                ),
              ),
              SizedBox(height: 104.h,),
              CustomButton(
                  buttonTitle: 'التالي',
                  isTapped: () {

                  },
                  width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
