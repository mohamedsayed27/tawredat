import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import 'package:tawredat/core/app_router/screen_names.dart';
import 'package:tawredat/core/assets_path/fonts_path.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';

import '../../widgets/auth_widgets/choose_login_or_register_button.dart';
import '../../widgets/auth_widgets/login_component.dart';
import '../../widgets/auth_widgets/register_component.dart';

class LoginAndRegisterScreen extends StatefulWidget {
  const LoginAndRegisterScreen({Key? key}) : super(key: key);

  @override
  State<LoginAndRegisterScreen> createState() => _LoginAndRegisterScreenState();
}

class _LoginAndRegisterScreenState extends State<LoginAndRegisterScreen> {
  final TextEditingController phoneRegisterController = TextEditingController();
  final TextEditingController emailRegisterController = TextEditingController();
  final TextEditingController passwordRegisterController = TextEditingController();
  final TextEditingController confirmPasswordRegisterController = TextEditingController();
  final TextEditingController phoneLoginController = TextEditingController();
  final TextEditingController passwordLoginController = TextEditingController();
  var loginFormKey = GlobalKey<FormState>();
  var registerFormKey = GlobalKey<FormState>();
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.h,
            ),
            Text(
              'تسجيل الخول',
              style: TextStyle(
                color: Colors.white,
                fontFamily: FontsPath.tajawalMedium,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            SvgPicture.asset(
              SvgPath.logo,
              width: 262.w,
              height: 80.h,
            ),
            SizedBox(
              height: 45.h,
            ),
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ChooseLoginOrRegisterButton(
                            onTap: () {
                              setState(() {
                                isLogin = true;
                              });
                            },
                            isLogin: isLogin,
                            title: 'تسجيل الخول',
                          ),
                        ),
                        Expanded(
                          child: ChooseLoginOrRegisterButton(
                            onTap: () {
                              setState(() {
                                isLogin = false;
                              });
                            },
                            isLogin: !isLogin,
                            title: 'أنشاء حساب',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70.h,),
                    Expanded(
                      child: isLogin
                          ? LoginComponent(
                              phoneController: phoneLoginController,
                              passwordController: passwordLoginController,
                              onButtonTapped: (){
                                Navigator.pushNamed(context, ScreenName.mainLayout);
                              },
                              formKey: registerFormKey)
                          : RegisterComponent(
                              phoneController: phoneRegisterController,
                              emailController: emailRegisterController,
                              passwordController: passwordRegisterController,
                              confirmPasswordController:
                                  confirmPasswordRegisterController,
                              onButtonTapped: () {
                                Navigator.pushNamed(context, ScreenName.otpScreen);
                              },
                              formKey: registerFormKey,
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
