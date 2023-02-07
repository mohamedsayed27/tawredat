import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';

class BuildCustomProfileContainer extends StatelessWidget {
  final String title;
  final String image;
  final void Function()? onPressed;
  const BuildCustomProfileContainer({Key? key, required this.title, required this.image, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0.h,horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 10.r,
                  color: Colors.black.withOpacity(0.09)
              )
            ]
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              foregroundColor: AppColors.primaryColor,
              backgroundColor: Colors.white
          ),
          onPressed: onPressed,
          child: ListTile(
            focusColor: AppColors.primaryColor,
            leading: SvgPicture.asset(image,height: 24.h,width: 24.w,),
            title: Text(title,style: TextStyle(color: Colors.black,fontSize:14.sp,fontFamily: FontsPath.tajawalMedium ),),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: const Color(0xffCFCCCC),size: 18.r,),
          ),
        ),
      ),
    );
  }
}
