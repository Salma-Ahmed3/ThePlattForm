import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_text_style.dart';

class ContractAttachmentsViewBody extends StatelessWidget {
  const ContractAttachmentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(height: 37.h,),
            Row(
              children: [
                const Icon(
                  Icons.error,
                ),
                const SizedBox(width: 11),
                Text('هذه الخطوة اختيارية يمكنك تجاهلها الآن',
                style: TextStyles.regular12.copyWith(color:Color(0xff24A19D)),),
              ],
            ),
            SizedBox(height: 21.h,),
              Container(
                width: 359,
                height: 87,
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
        ],
      ),
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}