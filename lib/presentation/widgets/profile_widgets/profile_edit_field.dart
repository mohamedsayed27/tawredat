import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/presentation/widgets/auth_widgets/auth_text_form_field.dart';
import '../../../core/assets_path/fonts_path.dart';

class ProfileEditWidget extends StatelessWidget {
  final String  title;
  final AuthTextFormField authTextFormField;
  const ProfileEditWidget({Key? key, required this.title, required this.authTextFormField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: FontsPath.tajawalMedium,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10.h,),
        authTextFormField
      ],
    );
  }
}
