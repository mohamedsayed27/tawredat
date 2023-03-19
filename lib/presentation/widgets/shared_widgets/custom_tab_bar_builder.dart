import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/assets_path/fonts_path.dart';

class CustomTabBarButtonBuilder extends StatelessWidget {
  final String title;
  final int index;
  final int currentIndex;
  final Color activeBackgroundButtonColor;
  final Color activeForegroundButtonColor;
  final Color inactiveBackgroundButtonColor;
  final Color inactiveForegroundButtonColor;
  final Color activeTitleButtonColor;
  final Color inactiveTitleButtonColor;
  final void Function() onButtonTapped;
  final bool isInMarketsScreen;

  const CustomTabBarButtonBuilder(
      {Key? key,
      required this.title,
      required this.index,
      required this.activeBackgroundButtonColor,
      required this.activeForegroundButtonColor,
      required this.inactiveBackgroundButtonColor,
      required this.inactiveForegroundButtonColor,
      required this.activeTitleButtonColor,
      required this.inactiveTitleButtonColor,
      required this.currentIndex,
      required this.onButtonTapped,
      this.isInMarketsScreen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: SizedBox(
        height: 40.h,
        width: 83.w,
        child: ElevatedButton(
          onPressed: onButtonTapped,
          style: ElevatedButton.styleFrom(
            elevation: isInMarketsScreen ? 1 : 0,
            padding: EdgeInsets.zero,
            backgroundColor: currentIndex == index
                ? activeBackgroundButtonColor
                : inactiveBackgroundButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            foregroundColor: currentIndex == index
                ? activeForegroundButtonColor
                : inactiveForegroundButtonColor,
            side: BorderSide(
              color: isInMarketsScreen
                  ? const Color(0xffEBEBEB).withOpacity(0.9)
                  : currentIndex == index
                      ? activeBackgroundButtonColor
                      : inactiveBackgroundButtonColor,
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: currentIndex == index
                  ? activeTitleButtonColor
                  : inactiveTitleButtonColor,
              fontSize: 14.sp,
              fontFamily: FontsPath.tajawalRegular,
            ),
          ),
        ),
      ),
    );
  }
}
