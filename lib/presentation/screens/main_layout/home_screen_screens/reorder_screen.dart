import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/home_screen_widgets/reorder_widget.dart';
import '../../../widgets/shared_widgets/custom_background.dart';

class ReorderScreen extends StatelessWidget {
  const ReorderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
          screenTitle: 'إعادة الطلب',
          child: Column(
            children: [
              SizedBox(height: 135.h,),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  itemBuilder: (BuildContext context, int index) {
                    return const ReorderItemBuilder();
                  },
                  itemCount: 8,
                ),
              ),
            ],
          )),
    );
  }
}
