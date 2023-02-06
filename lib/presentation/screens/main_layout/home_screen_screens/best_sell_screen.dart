import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/home_screen_widgets/favorites_item_builder.dart';
import '../../../widgets/shared_widgets/custom_background.dart';

class BestSellScreen extends StatelessWidget {
  const BestSellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
          screenTitle: 'المفضلة',
          child: Column(
            children: [
              SizedBox(height: 120.h,),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  itemBuilder: (BuildContext context, int index) {
                    return const FavoritesItem();
                  },
                  itemCount: 8,
                ),
              ),
            ],
          )),
    );
  }
}
