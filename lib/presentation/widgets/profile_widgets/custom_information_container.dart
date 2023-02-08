import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets_path/fonts_path.dart';

class CustomInformationContainer extends StatelessWidget {
  final String  title;
  final Widget child;
  const CustomInformationContainer({Key? key,required this.title, required this.child}) : super(key: key);

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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 58.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 20.r,
                    color: Colors.black.withOpacity(0.08)
                )
              ]
          ),
          child: Center(child: child),
        ),
      ],
    );
  }
}
