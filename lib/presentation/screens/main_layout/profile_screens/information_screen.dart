import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tawredat/core/app_router/screen_names.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';
import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/svg_path.dart';
import '../../../widgets/profile_widgets/custom_information_container.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 59.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 34.w,
                  height: 34.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.primaryColor,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppColors.primaryColor,
                      size: 15.r,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'بياناتي الشخصيه',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontsPath.tajawalMedium,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 34.w,
                  height: 34.h,
                )
              ],
            ),
            SizedBox(
              height: 42.h,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomInformationContainer(
                        title: 'الاسم الاول',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Ahmed',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: FontsPath.tajawalMedium,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Expanded(
                    child: CustomInformationContainer(
                        title: 'اسم العائلة',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Mohamed',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: FontsPath.tajawalMedium,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ))),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            CustomInformationContainer(
                title: 'الهاتف',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(SvgPath.phone,width: 24.w,height: 24.h,),
                    SizedBox(
                      width: 10.h,
                    ),
                    Text(
                      '011111111111',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontsPath.tajawalMedium,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 35.h,
            ),
            CustomInformationContainer(
                title: 'البريد الالكتروني',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(SvgPath.email,width: 24.w,height: 24.h,),
                    SizedBox(
                      width: 10.h,
                    ),
                    Text(
                      'Test11@example.com',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontsPath.tajawalMedium,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 35.h,
            ),
            CustomInformationContainer(
                title: 'المدينة ( الموقع )',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'منزلي - الرياض- السعوديه',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontsPath.tajawalMedium,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 15.r,),
                  ],
                )),
            const Spacer(),
            CustomButton(buttonTitle: 'تعديل', isTapped: (){Navigator.pushNamed(context, ScreenName.editProfileScreen);}, width: double.infinity),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
