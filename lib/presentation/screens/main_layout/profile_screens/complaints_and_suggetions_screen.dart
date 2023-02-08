import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/presentation/widgets/auth_widgets/auth_text_form_field.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';

class ComplaintsAndSuggestionsScreen extends StatefulWidget {
  const ComplaintsAndSuggestionsScreen({Key? key}) : super(key: key);

  @override
  State<ComplaintsAndSuggestionsScreen> createState() => _ComplaintsAndSuggestionsScreenState();
}

class _ComplaintsAndSuggestionsScreenState extends State<ComplaintsAndSuggestionsScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController complaintController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
                    'الشكاوي والاقتراحات',
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
            AuthTextFormField(hintText: 'الاسم', controller: nameController),
            SizedBox(
              height: 15.h,
            ),
            AuthTextFormField(hintText: 'البريد الإلكتروني', controller: emailController),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 300.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.authTextFieldFillColor
              ),
              child: Center(
                child: TextField(
                  controller: complaintController,
                  enabled: true,
                  textAlign: TextAlign.start,
                  maxLines: 30,
                  decoration: InputDecoration(
                      hintText: 'اضف شكاوي او مقترحات',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: FontsPath.tajawalRegular,
                          fontSize: 14.sp)),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(buttonTitle: 'ارسال', isTapped: (){}, width: double.infinity)
          ],
        ),
      ),
    );
  }
}
