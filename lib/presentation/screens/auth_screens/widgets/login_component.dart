import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/presentation/screens/auth_screens/widgets/auth_textFormField.dart';
import 'package:tawredat/presentation/shared_widgets/custom_button.dart';


class LoginComponent extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final Function onButtonTapped;
  final GlobalKey formKey;

  const LoginComponent(
      {Key? key,
        required this.phoneController,
        required this.passwordController,
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
            keyboardType: TextInputType.phone,
            hintText: 'الهاتف',
            controller: phoneController,
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
          SizedBox(
            height: 23.h,
          ),
          AuthTextFormField(
            hintText: 'كلمة المرور',
            controller: passwordController,
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
          SizedBox(
            height: 23.h,
          ),
          CustomButton(
              buttonTitle: 'تسجيل الدخول',
              isTapped: () {
                onButtonTapped();
              },
              width: double.infinity)
        ],
      ),
    );
  }
}
