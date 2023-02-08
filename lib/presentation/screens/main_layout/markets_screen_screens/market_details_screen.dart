import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../widgets/home_screen_widgets/offers_item_builder.dart';
import '../../../widgets/markets_component/market_details_intro_widget.dart';
import '../../../widgets/shared_widgets/custom_tab_bar_builder.dart';

class MarketDetailsScreen extends StatefulWidget {
  const MarketDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MarketDetailsScreen> createState() => _MarketDetailsScreenState();
}

class _MarketDetailsScreenState extends State<MarketDetailsScreen> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const MarketDetailsIntroWidget(),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                children: [
                  Text(
                    'تقيمات العملاء',
                    style: TextStyle(
                      fontFamily: FontsPath.tajawalRegular,
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  RatesWidget(),
                  RatesWidget(),
                  SizedBox(height: 10.h,),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      side: BorderSide(
                        color: AppColors.primaryColor,
                        width: 0.9.w
                      )
                    ),
                    child: Text('عرض المزيد',style: TextStyle(
                      fontFamily: FontsPath.tajawalMedium,
                      color: AppColors.primaryColor,
                      fontSize: 12.sp,
                    ),),
                  ),
                  SizedBox(height: 50.h,),
                  Text(
                    'منتجات المتجر',
                    style: TextStyle(
                      fontFamily: FontsPath.tajawalRegular,
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    itemBuilder: (BuildContext context, int index) {
                      return const OffersWidget();
                    },
                    itemCount: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget RatesWidget(){
    return Container(
      height: 110.h,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xff707070).withOpacity(0.3),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'أحمد محمد مصطفي',
                style: TextStyle(
                  fontFamily: FontsPath.tajawalMedium,
                  color: Colors.black,
                  fontSize: 12.sp,
                ),
              ),
              Text(
                '18-8-2020',
                style: TextStyle(
                  fontFamily: FontsPath.tajawalMedium,
                  color: Colors.grey,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          RatingBar.builder(
            itemSize: 20.r,
            ignoreGestures: true,
            initialRating: 4.5,
            minRating: 1,
            unratedColor: Colors.grey.withOpacity(0.6),
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            // itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: AppColors.secondaryColor,
            ),
            onRatingUpdate: (rating) {},
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left:60.w),
              child: Text(
                'خدمة ممتازة والتعامل باحترافية خدمة ممتازة والتعامل باحترافية',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: FontsPath.tajawalRegular,
                  color: Colors.black,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
