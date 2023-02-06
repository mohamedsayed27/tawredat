import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';

class CartDrpDown extends StatefulWidget {
  const CartDrpDown({Key? key}) : super(key: key);

  @override
  State<CartDrpDown> createState() => _CartDrpDownState();
}

class _CartDrpDownState extends State<CartDrpDown> {
 static List<int> countList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10
  ];
  int selectedNumber = countList.first;
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          padding: EdgeInsets.only(top: 5.w,left: 10.w),
          height: 28.h,
          width: 48.w,
          decoration: BoxDecoration(
              color: AppColors.rrr,
              borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
              color: Colors.grey
            )
              ),
          child: DropdownButton(
            iconSize: 25.r,
            items: countList
                .map(
                  (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  '$e',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: FontsPath.tajawalRegular,
                      color: Colors.grey),
                ),
              ),
            )
                .toList(),
            value: selectedNumber,
            onChanged: (value) {
              setState(() {
                selectedNumber = value!;
              });
            },
            dropdownColor: AppColors.rrr,
            underline: const SizedBox.shrink(),
            elevation: 0,
            isExpanded: true,
            style: TextStyle(
                fontSize: 12.sp,
                fontFamily: FontsPath.tajawalRegular,
                color: Colors.grey),
          ),
        ));
  }
}
