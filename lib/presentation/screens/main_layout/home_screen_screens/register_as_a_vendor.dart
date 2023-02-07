import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';
import 'package:tawredat/presentation/widgets/auth_widgets/auth_textFormField.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';

class RegisterAsAVendorScreen extends StatefulWidget {
  const RegisterAsAVendorScreen({Key? key}) : super(key: key);

  @override
  State<RegisterAsAVendorScreen> createState() =>
      _RegisterAsAVendorScreenState();
}

class _RegisterAsAVendorScreenState extends State<RegisterAsAVendorScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController clinicNameController = TextEditingController();

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
                      'اشترك كتاجر',
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
                height: 71.h,
              ),
              AuthTextFormField(
                hintText: 'الهاتف',
                controller: phoneController,
                prefix: Padding(
                  padding: EdgeInsets.all(13.0.r),
                  child: SvgPicture.asset(SvgPath.phone),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              AuthTextFormField(
                hintText: 'البريد الالكتروني',
                controller: phoneController,
                prefix: Padding(
                  padding: EdgeInsets.all(13.0.r),
                  child: SvgPicture.asset(SvgPath.email),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              AuthTextFormField(
                hintText: 'الاسم',
                controller: phoneController,
                prefix: Padding(
                  padding: EdgeInsets.all(13.0.r),
                  child: SvgPicture.asset(SvgPath.profile),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              AuthTextFormField(
                hintText: 'المدينة',
                controller: phoneController,
                prefix: Padding(
                  padding: EdgeInsets.all(13.0.r),
                  child: SvgPicture.asset(SvgPath.location),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              AuthTextFormField(
                  hintText: 'اسم العيادة',
                  controller: phoneController,
                  prefix: Icon(
                    Icons.maps_home_work_rounded,
                    size: 23.r,
                    color: AppColors.primaryColor,
                  )),
              SizedBox(
                height: 59.h,
              ),
              CustomButton(buttonTitle: 'ارسال', isTapped: (){}, width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
