import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/assets_path/fonts_path.dart';

class CustomTabBarBuilder extends StatefulWidget {
  final String title;
  final int index;
  final Color activeBackgroundButtonColor;
  final Color activeForegroundButtonColor;
  final Color inactiveBackgroundButtonColor;
  final Color inactiveForegroundButtonColor;
  final Color activeTitleButtonColor;
  final Color inactiveTitleButtonColor;

  const CustomTabBarBuilder({Key? key, required this.title, required this.index, required this.activeBackgroundButtonColor, required this.activeForegroundButtonColor, required this.inactiveBackgroundButtonColor, required this.inactiveForegroundButtonColor, required this.activeTitleButtonColor, required this.inactiveTitleButtonColor}) : super(key: key);

  @override
  State<CustomTabBarBuilder> createState() => _CustomTabBarBuilderState();
}

class _CustomTabBarBuilderState extends State<CustomTabBarBuilder> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          currentIndex = widget.index;
        });
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: currentIndex == widget.index?widget.activeBackgroundButtonColor:widget.inactiveBackgroundButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        foregroundColor: currentIndex == widget.index?widget.activeForegroundButtonColor:widget.inactiveForegroundButtonColor,
      ),
      child: Text(
        widget.title,
        style: TextStyle(
          color: currentIndex == widget.index
              ? widget.activeTitleButtonColor
              : widget.inactiveTitleButtonColor,
          fontSize: 14.sp,
          fontFamily: FontsPath.tajawalRegular,
        ),
      ),
    );
  }
}
