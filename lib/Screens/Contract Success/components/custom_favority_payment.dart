import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Models/contract_success/contract_success/payment_method.dart';

class CustomFavorityPayment extends StatelessWidget {
  final List<PaymentMethod>? paymentMethods;

  const CustomFavorityPayment({
    super.key,
    required this.paymentMethods,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < (paymentMethods?.length ?? 0) && i < 3; i++) 
              Container(
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                color: const Color(0xff24A19D),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: const Color(0xff000000),
                  width: 1.w,
                ),
                ),
                
                child: Image.network(
                  paymentMethods![i].imageUrl ?? '',
                  width: 40.w,
                  height: 40.h,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
