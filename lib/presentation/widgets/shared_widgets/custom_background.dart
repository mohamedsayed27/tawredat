import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';

import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';

class CustomBackground extends StatelessWidget {
  final double? firstContainerHeight;
  final Widget child;
  final String screenTitle;
  final bool isProfile;
  final bool isMyOrderScreen;
  const CustomBackground(
      {Key? key,
      this.firstContainerHeight,
      required this.child,
      required this.screenTitle,this.isProfile=false, this.isMyOrderScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 67.h,left: 14.w,right: 14.r),
              width: double.infinity,
              alignment: Alignment.topCenter,
              height: firstContainerHeight ?? 260.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.r),bottomLeft: Radius.circular(50.r))
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 34.w,
                    height: 34.h,
                    child: isProfile?null:ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.primaryColor,
                      ),
                      child: Icon(Icons.arrow_back_ios_rounded,color: AppColors.primaryColor,size: 15.r,),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      screenTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontsPath.tajawalMedium,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 34.w,
                    height: 34.h,
                    child: isMyOrderScreen?Stack(
                      children: [
                        PopupMenuButton<int>(
                          onSelected: (value){},
                          position: PopupMenuPosition.under,
                          child: Container(
                            height: 30.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.r)
                            ),
                            child: SvgPicture.asset(
                              SvgPath.filter,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Text(
                                      'تم التوصيل',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: FontsPath.tajawalMedium,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    Checkbox(
                                        value: true,
                                        onChanged: (d) {

                                        }),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 1,
                                child: Row(
                                  children: [
                                    Text(
                                      'تم الشحن',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: FontsPath.tajawalMedium,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    Checkbox(
                                        value: true,
                                        onChanged: (d) {

                                        }),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: Row(
                                  children: [
                                    Text(
                                      'تم الغاءه',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: FontsPath.tajawalMedium,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Spacer(),
                                    Checkbox(
                                        value: false,
                                        onChanged: (d) {

                                        }),
                                  ],
                                ),
                              ),
                            ];
                          },
                        ),
                      ],
                    ):null,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
              ),
            ),
          ],
        ),
        child,
      ],
    );
  }
}
