import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tawredat/presentation/widgets/auth_widgets/auth_text_form_field.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';
import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/svg_path.dart';
import '../../../widgets/profile_widgets/profile_edit_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController email = TextEditingController();

  @override
  void initState() {
    phoneController.text='01111111111';
    firstNameController.text='Ahmed';
    secondNameController.text='Mohamed';
    email.text='Test11@example.com';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0.w),
          child: Column(
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
                      'بياناتي الشخصيه',
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
                height: 42.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: ProfileEditWidget(
                        title: 'الاسم الاول',
                        authTextFormField: AuthTextFormField(
                            hintText: 'الاسم الاول', controller: firstNameController)),
                    // child: CustomInformationContainer(
                    //     title: 'الاسم الاول',
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //         Text(
                    //           'Ahmed',
                    //           style: TextStyle(
                    //             fontSize: 16.sp,
                    //             fontFamily: FontsPath.tajawalMedium,
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //       ],
                    //     )),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Expanded(
                      child: ProfileEditWidget(
                          title: 'الاسم الثاني',
                          authTextFormField: AuthTextFormField(
                              hintText: 'الاسم الثاني', controller: secondNameController))),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              ProfileEditWidget(
                  title: 'الهاتف',
                  authTextFormField: AuthTextFormField(
                    prefix: Padding(
                      padding: EdgeInsets.all(13.r),
                      child: SvgPicture.asset(SvgPath.phone,width: 24.w,height: 24.h,),
                    ),
                      hintText: 'الهاتف', controller: phoneController)),
              SizedBox(
                height: 35.h,
              ),
              ProfileEditWidget(
                  title: 'البريد الالكتروني',
                  authTextFormField: AuthTextFormField(
                      prefix: Padding(
                        padding: EdgeInsets.all(13.r),
                        child: SvgPicture.asset(SvgPath.email,width: 24.w,height: 24.h,),
                      ),
                      hintText: 'البريد الالكتروني', controller: email)),
              SizedBox(
                height: 70.h,
              ),
              CustomButton(
                  buttonTitle: 'تعديل', isTapped: () {}, width: double.infinity),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
