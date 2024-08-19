import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomContractItems extends StatelessWidget {
  const CustomContractItems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.error,
              ),
              const SizedBox(width: 11),
              Text('بإكمالك الخطوات فأنت توافق على ',style: TextStyles.regular12,),
              Text('شروط و أحكام الشركة',style: TextStyles.regular12.copyWith(color:Color(0xff24A19D)),),
            ],
          ),
              const SizedBox(height: 11),
          Row(
            children: [
              const Icon(
                Icons.error,
              ),
              const SizedBox(width: 11),
              Text('يتوجب عليك رفع المستندات المطلوبة لاحقا',style: TextStyles.regular12.copyWith(color:Color(0xff24A19D)),),
            ],
          ),
        ],
      ),
    );
  }
}