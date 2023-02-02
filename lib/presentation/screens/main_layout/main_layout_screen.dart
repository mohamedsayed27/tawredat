import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/assets_path/fonts_path.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/svg_path.dart';
import 'cart_screen.dart';
import 'home_screen.dart';
import 'markets_screen.dart';
import 'profile_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int cIndex = 0;
  List<Widget> screens= [
    const HomeScreen(),
    const MarketsScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[cIndex],
        bottomNavigationBar: Container(height: 80.h,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 0),
                    blurRadius: 10.r
                )
              ]
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedFontSize: 13.sp,
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 12.sp,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.secondaryColor,
            unselectedItemColor: Colors.grey,
            currentIndex: cIndex,
            selectedLabelStyle: const TextStyle(
              color: AppColors.secondaryColor,
                fontFamily: FontsPath.tajawalMedium
            ),
            unselectedLabelStyle: const TextStyle(
              color: AppColors.secondaryColor,
              fontFamily: FontsPath.tajawalMedium
            ),
            onTap: (index) {
              setState(() {
                cIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0.h),
                  child: SvgPicture.asset(
                    SvgPath.home,
                    color: cIndex == 0
                        ? AppColors.secondaryColor
                        : AppColors.primaryColor,
                  ),
                ),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.0.h),
                    child: SvgPicture.asset(SvgPath.market,
                        color: cIndex == 1
                            ? AppColors.secondaryColor
                            : AppColors.primaryColor,
                    ),
                  ),
                  label: 'المتاجر'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.0.h),
                    child: SvgPicture.asset(SvgPath.cart,
                        color: cIndex == 2
                            ? AppColors.secondaryColor
                            : AppColors.primaryColor,
                    ),
                  ),
                  label: 'سلة المشتريات'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 5.0.h),
                    child: SvgPicture.asset(SvgPath.profile,
                        color: cIndex == 3
                            ? AppColors.secondaryColor
                            : AppColors.primaryColor,
                    ),
                  ),
                  label: 'حسابي'),
            ],
          ),
        ),
      ),
    );
  }
}
