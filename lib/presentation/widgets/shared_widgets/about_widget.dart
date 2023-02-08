import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/assets_path/fonts_path.dart';

class AboutWidget extends StatelessWidget {
  final String title;
  const AboutWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 5.r,
          ),
          SizedBox(width: 9.w,),
          Expanded(child: Text(title,style: TextStyle(height:1.5.h,fontSize: 14.sp,fontFamily: FontsPath.tajawalRegular,color: const Color(0xff262E3E)),)),
        ],
      ),
    );
  }
}
