import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import 'package:tawredat/core/assets_path/images_path.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/assets_path/svg_path.dart';

class BestSellWidget extends StatelessWidget {
  const BestSellWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h,vertical: 15.h),
      height: 149.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 0),
            blurRadius: 20.r,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImagesPath.dummy1,
            height: 75.h,
            width: 88.w,
          ),
          SizedBox(width: 9.h,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('يتم وضع اسم المنتج هنا يتم وضع اسم المنتج هنا',
                      style: TextStyle(
                          fontFamily: FontsPath.tajawalRegular,
                          color: Colors.black,
                          fontSize: 12.sp)),
                  SizedBox(height: 9.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                          Icons.star_border,
                          color: AppColors.secondaryColor,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text('(4.5)',
                          style: TextStyle(
                              fontFamily: FontsPath.tajawalRegular,
                              fontSize: 12.sp,
                              color: AppColors.secondaryColor)),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Text('متجر : :الأول للأدوات الطبيه',
                      style: TextStyle(
                          fontFamily: FontsPath.tajawalRegular,
                          color: Colors.grey,
                          fontSize: 12.sp)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '1212 رس',
                    style: TextStyle(
                      fontFamily: FontsPath.tajawalBold,
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        offset: const Offset(0, 0),
                        blurRadius: 20.r)
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                    foregroundColor: Colors.red,
                  ),
                  child: SvgPicture.asset(
                    SvgPath.favorite,
                    color: Colors.red,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
