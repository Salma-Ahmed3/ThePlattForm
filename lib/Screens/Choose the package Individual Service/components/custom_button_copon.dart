import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utility/app_text_style.dart';
import 'custom_container_nationality.dart';

class CustomButtonCopon extends StatefulWidget {
  const CustomButtonCopon({super.key, required this.promotionCode, required this.promotionCodeDescription});
final String promotionCode , promotionCodeDescription;
  @override
  State<CustomButtonCopon> createState() => _CustomButtonCoponState();
}

class _CustomButtonCoponState extends State<CustomButtonCopon> {
  // Variable to store the discount message
  String? discountMessage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomContainerNationality(
          titleText: 'هل تمتلك كوبون خصم؟',
          widthContainer: 200.w,
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    discountMessage ?? 'ادخل رقم الكوبون من فضلك',
                    style: TextStyles.regular12,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        discountMessage = widget.promotionCode;
                      });
                    },
                    child: Container(
                      width: 92.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'تطبيق الخصم',
                          style: TextStyles.regular12
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              if (discountMessage != null)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'تم تطبيق ${widget.promotionCodeDescription}',
                    // discountMessage!,
                    style: TextStyles.regular12.copyWith(color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
