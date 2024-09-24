import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Success/components/custom_button_push.dart';
import 'package:nowproject/cubit/contract_success/contract_success_cubit.dart';
import 'package:nowproject/cubit/contract_success/contract_success_state.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'custom_container_wallet_balance.dart';
class ContractSuccessViewBody extends StatelessWidget {
  final String id; 
  final String type;

  const ContractSuccessViewBody({super.key, required this.id, required this.type});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ContractSuccessCubit>(context).getFixedPackage(id, type);

    return BlocConsumer<ContractSuccessCubit, ContractState>(
      builder: (context, state) {
        if (state is ContractSuccessLoading) {
          return Center(
            child: SizedBox(
              width: 80.w,
              height: 100.h,
              child: Image.asset(Assets.imagesclockloader),
            ),
          );
        } else if (state is ContractSuccessListUpdate) {
          return   Column(
            children: [
              SizedBox(height: 109.h),
              Image.asset(Assets.imagesSuccess, width: 500, height: 128),
              Text('تم تسجيل التعاقد بنجاح', style: TextStyles.bold20),
              SizedBox(height: 13.h),
              Text(
              'رقم الطلب :${state.contract.data?.paymentCredintials?.sequenceNumber ?? ''}',
                style: TextStyles.bold16.copyWith(color: Colors.red),
              ),
              SizedBox(height: 15.h),
              Text('قيمه التعاقد :${state.contract.data?.paymentCredintials?.finalPrice ?? ''}', style: TextStyles.regular20),
              SizedBox(height: 15.h),
              const CustomContainerWalletBalance(),
              SizedBox(height: 26.h),
              const CustomButtonPush(),
              SizedBox(height: 15.h),
              Text(
                'ملاحظة: لديك ساعة واحدة فقط للدفع',
                style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),
              ),
              SizedBox(height: 5.h),
              Text('عملية إلغاء العقد تتم بشكل تلقائي ,', style: TextStyles.regular14),
            ],
          );
          
        
        } else {
        return  const Center(child: Text('لا توجد عقود متاحه'));
        }
      },
      listener: (context, state) {
        if (state is ContractSuccessFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
    );
  }
}

