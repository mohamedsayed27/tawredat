import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/svg_path.dart';
import '../shared_widgets/custom_button.dart';
import 'auth_text_form_field.dart';

class RegisterComponent extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final Function onButtonTapped;
  final GlobalKey formKey;

  const RegisterComponent(
      {Key? key,
      required this.phoneController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController,
      required this.onButtonTapped,
      required this.formKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        children: [
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
          SizedBox(
            height: 23.h,
          ),
          AuthTextFormField(
            hintText: 'البريد الالكتروني',
            controller: emailController,
            prefix: Padding(
              padding: EdgeInsets.all(13.0.r),
              child: SvgPicture.asset(
                SvgPath.email,
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
          SizedBox(
            height: 23.h,
          ),
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

          SizedBox(
            height: 23.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                  value: true,
                  onChanged: (d) {
                  }),
              SizedBox(
                width: 10.w,
              ),
              Text('الموافقة علي الشروط والاحكام',style: TextStyle(
                  color: Colors.black,
                  fontFamily: FontsPath.tajawalRegular,
                  fontSize: 12.sp),)
            ],
          ),
          SizedBox(
            height: 23.h,
          ),
          CustomButton(
              buttonTitle: 'انشاء حساب',
              isTapped: () {
                onButtonTapped();
              },
              width: double.infinity)
        ],
      ),
    );
  }
}
