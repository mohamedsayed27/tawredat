import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import 'package:tawredat/presentation/widgets/home_screen_widgets/offers_item_builder.dart';
import '../../../widgets/shared_widgets/custom_background.dart';
import '../../../widgets/shared_widgets/custom_tab_bar_builder.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _BestSellScreenState();
}

class _BestSellScreenState extends State<OffersScreen> {
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
      body: CustomBackground(
        screenTitle: 'العروض',
        child: Column(
          children: [
            SizedBox(
              height: 135.h,
            ),
            SizedBox(
              height: 45.h,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CustomTabBarButtonBuilder(
                    title: titles[index],
                    index: index,
                    activeBackgroundButtonColor: Colors.white,
                    activeForegroundButtonColor: AppColors.primaryColor,
                    inactiveBackgroundButtonColor:
                    const Color(0xffEBEBEB).withOpacity(0.2),
                    inactiveForegroundButtonColor: Colors.white,
                    activeTitleButtonColor: Colors.black,
                    inactiveTitleButtonColor: Colors.white,
                    currentIndex: currentIndex,
                    onButtonTapped: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  );
                },
                itemCount: titles.length,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                itemBuilder: (BuildContext context, int index) {
                  return const OffersWidget();
                },
                itemCount: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
