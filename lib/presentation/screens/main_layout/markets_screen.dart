import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../widgets/markets_component/build_markets_item.dart';
import '../../widgets/shared_widgets/custom_tab_bar_builder.dart';

class MarketsScreen extends StatefulWidget {
  const MarketsScreen({Key? key}) : super(key: key);

  @override
  State<MarketsScreen> createState() => _MarketsScreenState();
}

class _MarketsScreenState extends State<MarketsScreen> {
  final List<String> titles = [
    'اسنان',
    'عظام',
    'اسنان',
    'عظام',
    'اسنان',
    'عظام',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 34.w,
                  height: 34.h,
                ),
                Expanded(
                  child: Text(
                    'المتاجر',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontsPath.tajawalMedium,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 28.w,
                  height: 28.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.primaryColor,
                    ),
                    child: SvgPicture.asset(
                      SvgPath.filter,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0.h),
                    child: CustomTabBarButtonBuilder(
                      title: titles[index],
                      isInMarketsScreen: true,
                      index: index,
                      activeBackgroundButtonColor: AppColors.primaryColor,
                      activeForegroundButtonColor: Colors.white,
                      inactiveBackgroundButtonColor: Colors.white,
                      inactiveForegroundButtonColor: AppColors.primaryColor,
                      activeTitleButtonColor: Colors.white,
                      inactiveTitleButtonColor: Colors.black,
                      currentIndex: currentIndex,
                      onButtonTapped: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  );
                },
                itemCount: titles.length,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (BuildContext context, int index) {
                  return const MarketsContainer();
                },
                itemCount: 7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
