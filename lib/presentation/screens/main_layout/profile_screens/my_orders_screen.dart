import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/app_router/screen_names.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_background.dart';
import '../../../widgets/profile_widgets/my_orders_custom_widget.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomBackground(
        isMyOrderScreen: true,
        screenTitle: 'الطلبات',
        child: Column(
          children: [
            SizedBox(
              height: 127.h,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(onTap:(){Navigator.pushNamed(context, ScreenName.myOrdersDetailsScreen);},child: const MyOrderItemBuilder());
                },
                itemCount: 8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
