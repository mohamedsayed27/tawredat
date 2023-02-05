import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/app_router/screen_names.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/svg_path.dart';
import '../../widgets/auth_widgets/auth_textFormField.dart';
import '../../widgets/shared_widgets/custom_button.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('نسيت كلمة المرور',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text('أدخل رقم  هاتف تستطيع تلقي الرسائل عليه',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: FontsPath.tajawalRegular,
                        color: Colors.black)),
              ),
              SizedBox(height: 32.h,),
              AuthTextFormField(
                hintText: 'الهاتف',
                keyboardType: TextInputType.phone,
                controller: phoneController,
                prefix: Padding(
                  padding: EdgeInsets.all(13.0.r),
                  child: SvgPicture.asset(
                    SvgPath.phone,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                validate: (val){
                  if(val!.isEmpty){
                    return 'يجب ';
                  }
                  return null;
                },
              ),
              SizedBox(height: 104.h,),
              CustomButton(
                  buttonTitle: 'التالي',
                  isTapped: () {
                    Navigator.pushNamed(context, ScreenName.changeForgetPasswordScreen);

                  },
                  width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
