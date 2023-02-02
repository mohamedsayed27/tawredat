import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/svg_path.dart';
import '../../../shared_widgets/custom_button.dart';
import '../widgets/auth_textFormField.dart';

class ChangeForgetPasswordScreen extends StatefulWidget {
  const ChangeForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangeForgetPasswordScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<ChangeForgetPasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text('من فضللك قم بكتابة كلمة مرور جديدة مع التأكد من عدم علم اي شخص بها ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: FontsPath.tajawalRegular,
                        color: Colors.black)),
              ),
              SizedBox(height: 32.h,),
              AuthTextFormField(
                hintText: 'كلمة المرور',
                controller: passwordController,
                prefix: Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: SvgPicture.asset(
                    SvgPath.lock,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                suffix: const Icon(Icons.visibility_sharp),
                validate: (val){
                  if(val!.isEmpty){
                    return 'يجب ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 23.h,
              ),
              AuthTextFormField(
                hintText: 'أعد كتابة كلمة المرور',
                controller: confirmPasswordController,
                prefix: Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: SvgPicture.asset(
                    SvgPath.lock,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                suffix: const Icon(Icons.visibility_off),
                validate: (val){
                  if(val!.isEmpty){
                    return 'يجب ';
                  }
                  return null;
                },
              ),
              SizedBox(height: 104.h,),
              CustomButton(
                  buttonTitle: 'تأكيد',
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
