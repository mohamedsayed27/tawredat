import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tawredat/core/app_colors/app_colors.dart';
import 'package:tawredat/core/assets_path/fonts_path.dart';
import 'package:tawredat/core/assets_path/svg_path.dart';

class AddressDropdownButton extends StatefulWidget {
  const AddressDropdownButton({Key? key}) : super(key: key);

  @override
  State<AddressDropdownButton> createState() => _AddressDropdownButtonState();
}

class _AddressDropdownButtonState extends State<AddressDropdownButton> {
  static List<String> addressList = [
    'توصيل الي: منزلي, الرياض , السعودية',
    'توصيل الي: منزلي, مكة , السعودية',
    'توصيل الي: منزلي, المدينة , السعودية',
  ];
  String selectedValue = addressList.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      height: 57.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.rrr,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 3.r,
                color: Colors.black.withOpacity(0.1))
          ]),
      child: Row(
        children: [
          SvgPicture.asset(SvgPath.location,width: 24.w,height: 24.h,),
          SizedBox(width: 10.w,),
          Expanded(
            child: DropdownButton(
              items: addressList
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: FontsPath.tajawalRegular,
                            color: Colors.black),
                      ),
                    ),
                  )
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              dropdownColor: AppColors.rrr,
              underline: const SizedBox.shrink(),
              isExpanded: true,
              elevation: 0,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: FontsPath.tajawalRegular,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
