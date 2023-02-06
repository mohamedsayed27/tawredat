import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets_path/fonts_path.dart';

class CartDeleteButton extends StatelessWidget {
  const CartDeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      width: 74.w,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
            backgroundColor: const Color(0xffFF0000).withOpacity(0.1),
            foregroundColor: Colors.red.shade300,
            elevation: 0,
            shadowColor: Colors.black.withOpacity(0.1)
        ),
        child: Row(
          children: [
            Icon(
              Icons.delete,
              color: Colors.red,
              size: 15.r,
            ),
            SizedBox(width: 5.w,),
            Text(
              'حذف',
              style: TextStyle(
                fontFamily: FontsPath.tajawalRegular,
                color: Colors.red,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
