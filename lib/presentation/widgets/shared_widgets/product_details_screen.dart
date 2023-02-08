import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import 'package:tawredat/core/assets_path/images_path.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../core/assets_path/fonts_path.dart';
import '../home_screen_widgets/best_sell_item_builder.dart';
import 'about_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> imagesPath = [
    ImagesPath.dummy1,
    ImagesPath.dummy1,
    ImagesPath.dummy1,
    ImagesPath.dummy1,
  ];
  final pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          children: [
            SizedBox(
              height: 220.h,
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: imagesPath.length,
                    controller: pageViewController,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Image.asset(
                          imagesPath[index],
                          height: 177.h,
                          width: 148.w,
                        ),
                      );
                    },
                    onPageChanged: (index) {},
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: pageViewController,
                      count: imagesPath.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                        expansionFactor: 1.5,
                        spacing: 5.w,
                        activeDotColor: AppColors.primaryColor,
                        dotColor: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60.h,
                      left: 0,
                      child: Column(
                        children: [
                          SizedBox(
                            height:28.h,
                            width: 28.w,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.red,
                              ),
                              child: SvgPicture.asset(SvgPath.favorite,height: 24.h,width: 24.w,color: Colors.red,),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          SizedBox(
                            height:28.h,
                            width: 28.w,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                                foregroundColor: AppColors.primaryColor,
                              ),
                              child: SvgPicture.asset(SvgPath.share,height: 24.h,width: 24.w,),
                            ),
                          )
                        ],
                      ),),
                  Positioned(
                      top: 60.h,
                      right: 0,
                      child: SizedBox(
                        width: 28.w,
                        height: 28.h,
                        child: ElevatedButton(
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
                      ),)
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Text(
              'يتم وضع اسم المنتج هنا يتم وضع اسم المنتج هنا',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: FontsPath.tajawalMedium,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.h,),
            Text(
              '112 رس',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: FontsPath.tajawalBold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 17.h,),
            const Divider(),
            SizedBox(height:13.h),
            Text(
              'متوفر 2500 قطعة',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: FontsPath.tajawalRegular,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h,),
            Text(
              'ستم التوصيل بحلول الثلاثاء 24 ديسمبر 2022',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: FontsPath.tajawalRegular,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 17.h,),
            const Divider(),
            SizedBox(height:13.h),
            Text(
              'وصف عن المنتج',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: FontsPath.tajawalBold,
                color: Colors.black,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return const AboutWidget(
                  title:
                  'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم',
                );
              },
              itemCount: 5,
            ),
            SizedBox(height: 17.h,),
            const Divider(),
            SizedBox(height:13.h),
            Text(
              'منتحات مشابهه',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: FontsPath.tajawalBold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 180.h,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BestSellWidget(isDetails: true),
                  );
                },
                itemCount: 8,
              ),
            ),
            SizedBox(height: 10.h,),
            CustomButton(buttonTitle: 'أضف الي السله', isTapped: (){}, width: double.infinity),
            SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}
