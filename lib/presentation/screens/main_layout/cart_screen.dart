import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/app_router/screen_names.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../widgets/auth_widgets/auth_textFormField.dart';
import '../../widgets/shared_widgets/address_dropdown_button.dart';
import '../../widgets/shared_widgets/cart_item.dart';
import '../../widgets/shared_widgets/custom_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController cubonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 56.h,
              ),
              Text(
                'سلة المشتريات',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: FontsPath.tajawalMedium,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const AddressDropdownButton(),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 350.h,
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                  itemBuilder: (BuildContext context, int index) {
                    return const CartItemBuilder();
                  },
                  itemCount: 3,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              AuthTextFormField(
                hintText: 'ادخل كوبون الخصم',
                controller: cubonController,
                suffix: Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 10.w),
                  child: Text(
                    'تفعيل',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                        fontFamily: FontsPath.tajawalBold),
                  ),
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              Container(
                height: 150.h,
                clipBehavior: Clip.antiAlias,
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 14.w),
                decoration: BoxDecoration(
                  color: AppColors.authTextFieldFillColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' منتج واحد',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontFamily: FontsPath.tajawalBold),
                        ),
                        Text(
                          '444 رس',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 16.sp,
                              fontFamily: FontsPath.tajawalBold),
                        ),
                      ],
                    ),
                    CustomButton(
                      buttonTitle: 'التالي',
                      isTapped: () {
                        Navigator.pushNamed(context, ScreenName.paymentScreen);
                      },
                      width: double.infinity,
                    )
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
