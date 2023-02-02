import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/presentation/features/auth_screens/widgets/auth_textFormField.dart';
import 'package:tawredat/presentation/shared_widgets/custom_button.dart';

import '../../../../core/assets_path/svg_path.dart';

class RegisterComponent extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  const RegisterComponent({Key? key, required this.phoneController, required this.emailController, required this.passwordController, required this.confirmPasswordController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AuthTextFormField(hintText: 'الهاتف', controller: phoneController,prefix: Padding(
          padding: EdgeInsets.all(13.0.r),
          child: SvgPicture.asset(SvgPath.phone,width: 24.w,height: 24.h,),
        ),),
        SizedBox(height: 10.h,),
        AuthTextFormField(hintText: 'البريد الالكتروني', controller: emailController,prefix: Padding(
          padding: EdgeInsets.all(13.0.r),
          child: SvgPicture.asset(SvgPath.email,width: 24.w,height: 24.h,),
        ),),
        SizedBox(height: 10.h,),
        AuthTextFormField(hintText: 'كلمة المرور', controller: passwordController,prefix: Padding(
          padding: EdgeInsets.all(15.0.r),
          child: SvgPicture.asset(SvgPath.lock,width: 24.w,height: 24.h,),
        ),),
        SizedBox(height: 10.h,),
        AuthTextFormField(hintText: 'أعد كتابة كلمة المرور', controller: confirmPasswordController,prefix: Padding(
          padding: EdgeInsets.all(15.0.r),
          child: SvgPicture.asset(SvgPath.lock,width: 24.w,height: 24.h,),
        ),),
        SizedBox(height: 10.h,),
        CustomButton(buttonTitle: 'انشاء حساب', isTapped: (){}, width: double.infinity)
      ],
    );
  }
}
