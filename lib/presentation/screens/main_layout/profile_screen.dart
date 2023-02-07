import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../widgets/home_screen_widgets/custom_category_widget.dart';
import '../../widgets/profile_widgets/custom_container.dart';
import '../../widgets/shared_widgets/custom_background.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        firstContainerHeight: 185.h,
        isProfile: true,
        screenTitle: 'حسابي',
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 133.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCategoryWidget(
                    title: 'الطلبات',
                    icon: SvgPath.cube,
                    onTap: () {},
                  ),
                  CustomCategoryWidget(
                    title: 'المفضلة',
                    icon: SvgPath.wallet,
                    onTap: () {},
                  ),
                  CustomCategoryWidget(
                    title: 'المحفظة',
                    icon: SvgPath.percentageSquare,
                    onTap: () {},
                  ),
                  CustomCategoryWidget(
                    title: 'البروفايل',
                    icon: SvgPath.profile,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    BuildCustomProfileContainer(
                        image: SvgPath.location,
                        title: 'عناويني',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.information,
                        title: 'عن التطبيق',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.check,
                        title: 'الشروط والاحكام',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.document,
                        title: 'سياسة الخصوصية',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.complaints,
                        title: 'الاقتراحات والشكاوي',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.share,
                        title: 'مشاركة التطبيق',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.rating,
                        title: 'تقيم التطبيق',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.lock,
                        title: 'تغير كلمة المرور',
                        onPressed: () {}),
                    BuildCustomProfileContainer(
                        image: SvgPath.location,
                        title: 'تسجيل الخروج',
                        onPressed: () {}),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
