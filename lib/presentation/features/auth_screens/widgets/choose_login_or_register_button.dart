import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';

class ChooseLoginOrRegisterButton extends StatelessWidget {
  final Function onTap;
  final bool isLogin;
  final String title;

  const ChooseLoginOrRegisterButton(
      {Key? key,
      required this.onTap,
      required this.isLogin,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Container(
        height: 62.h,
        decoration: BoxDecoration(
          color: isLogin ? Colors.white : AppColors.authTextFieldFillColor,
          boxShadow: isLogin
              ? [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 20.r,
                    color: Colors.black.withOpacity(0.09),
                  )
                ]
              : null,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: isLogin ? AppColors.primaryColor : Colors.black,
                fontFamily: isLogin?FontsPath.tajawalBold:FontsPath.tajawalRegular,
                fontSize: 14.sp),
          ),
        ),
      ),
    );
  }
}
