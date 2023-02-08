import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/custom_button.dart';

import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/images_path.dart';
import '../../../../core/enums/payment_type_enum.dart';
import '../../../widgets/auth_widgets/auth_text_form_field.dart';
import '../../../widgets/shared_widgets/payment_type_widget.dart';

class ChargeWalletScreen extends StatefulWidget {
  const ChargeWalletScreen({Key? key}) : super(key: key);

  @override
  State<ChargeWalletScreen> createState() => _ChargeWalletScreenState();
}

class _ChargeWalletScreenState extends State<ChargeWalletScreen> {
  PaymentTypeEnum paymentType = PaymentTypeEnum.visa;
  final TextEditingController moneyPay = TextEditingController();
  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController nameOnCard = TextEditingController();
  final TextEditingController endDate = TextEditingController();
  final TextEditingController ccv = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
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
                      'الدفع',
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
              AuthTextFormField(hintText: 'أدخل المبلغ  المراد شحنه', controller: moneyPay),
              SizedBox(
                height: 30.h,
              ),
              StatefulBuilder(
                builder: (BuildContext context,
                    void Function(void Function()) setState) {
                  return Column(
                    children: [
                      PaymentTypeWidget(
                          onChanged: (val){
                            setState((){
                              paymentType = val!;
                            });
                          },
                          paymentTypeEnum: PaymentTypeEnum.mada,
                          paymentTypeEnumGroupedBy: paymentType,
                          title: 'مدي',
                          imagePath: ImagesPath.mada,
                          imageHeight: 41.h,
                          imageWidth: 41.w),
                      SizedBox(height: 20.h,),
                      PaymentTypeWidget(
                          onChanged: (val){
                            setState((){
                              paymentType = val!;
                            });
                          },
                          paymentTypeEnum: PaymentTypeEnum.visa,
                          paymentTypeEnumGroupedBy: paymentType,
                          title: 'فيزا',
                          imagePath: ImagesPath.visa,
                          imageHeight: 21.h,
                          imageWidth: 36.w),
                      SizedBox(height: 20.h,),
                      PaymentTypeWidget(
                          onChanged: (val){
                            setState((){
                              paymentType = val!;
                            });
                          },
                          paymentTypeEnum: PaymentTypeEnum.materCard,
                          paymentTypeEnumGroupedBy: paymentType,
                          title: 'ماستر كارد',
                          imagePath: ImagesPath.masterCard,
                          imageHeight: 21.h,
                          imageWidth: 34.w),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 41.h,
              ),
              AuthTextFormField(hintText: 'رقم البطاقة', controller: cardNumber),
              SizedBox(
                height: 16.h,
              ),
              AuthTextFormField(hintText: 'الاسم علي البطاقة', controller: nameOnCard),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Expanded(child: AuthTextFormField(hintText: 'تاريخ الانتهاء', controller: endDate,suffix: const Icon(Icons.calendar_month_rounded,color: Colors.grey,),)),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(child: AuthTextFormField(hintText: 'CCV', controller: ccv)),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              CustomButton(buttonTitle: 'اشحن الان', isTapped: (){}, width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
