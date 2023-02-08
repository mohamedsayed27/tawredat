import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tawredat/presentation/widgets/auth_widgets/auth_text_form_field.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';
import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/svg_path.dart';
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<ChangePasswordScreen> {
  final TextEditingController nowPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController confirmNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 59.h,
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
                      'تغير كلمة المرور',
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
                height: 67.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 89.w),
                child: Text(
                  'يجب ان يكون الرقم السري الخاص بك مكون من 8 حروف وأرقام  ورمز واحد علي الاقل',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: FontsPath.tajawalMedium,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 43.h,
              ),
              AuthTextFormField(
                  prefix: Padding(
                    padding: EdgeInsets.all(13.r),
                    child: SvgPicture.asset(SvgPath.lock,width: 24.w,height: 24.h,),
                  ),
                  hintText: 'ادخل كلمة المرور الحالية', controller: nowPassword),
              SizedBox(
                height: 35.h,
              ),
              AuthTextFormField(
                  prefix: Padding(
                    padding: EdgeInsets.all(13.r),
                    child: SvgPicture.asset(SvgPath.lock,width: 24.w,height: 24.h,),
                  ),
                  suffix: const Icon(Icons.visibility,color: Colors.grey,),
                  hintText: 'كلمة المرور', controller: newPassword),
              SizedBox(
                height: 35.h,
              ),
              AuthTextFormField(
                  prefix: Padding(
                    padding: EdgeInsets.all(13.r),
                    child: SvgPicture.asset(SvgPath.lock,width: 24.w,height: 24.h,),
                  ),
                  suffix: const Icon(Icons.visibility_off,color: Colors.grey,),
                  hintText: 'أعد كتابة كلمة المرور', controller: confirmNewPassword),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                  buttonTitle: 'تغير كلمة المرور', isTapped: () {}, width: double.infinity),
            ],
          ),
        ),
      ),
    );
  }
}
