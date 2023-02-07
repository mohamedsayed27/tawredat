import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/enums/payment_type_enum.dart';

class PaymentTypeWidget extends StatelessWidget {
  final PaymentTypeEnum paymentTypeEnum;
  final PaymentTypeEnum paymentTypeEnumGroupedBy;
  final void Function(PaymentTypeEnum?)? onChanged;
  final String title;
  final String imagePath;
  final double imageHeight;
  final double imageWidth;
  const PaymentTypeWidget({Key? key, required this.paymentTypeEnum, required this.paymentTypeEnumGroupedBy, this.onChanged, required this.title, required this.imagePath, required this.imageHeight, required this.imageWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primaryColor
        ),
        onPressed: () {
          onChanged!(paymentTypeEnum);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio<PaymentTypeEnum>(value: paymentTypeEnum, groupValue: paymentTypeEnumGroupedBy, onChanged: onChanged,fillColor: MaterialStateProperty.all(AppColors.primaryColor)),
                SizedBox(width: 8.w,),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontsPath.tajawalMedium,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Image.asset(imagePath,height: imageHeight,width: imageWidth,)
          ],
        ),
      ),
    );
  }
}
