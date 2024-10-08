import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Success/components/custom_button_pushh.dart';
import 'package:nowproject/Screens/Contract%20Success/components/custom_favority_payment.dart';
import 'package:nowproject/Screens/Contract%20Success/components/rectangle_payment.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/Screens/Resident%20service/components/global_data.dart';
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

    return SingleChildScrollView(
      child: BlocConsumer<ContractSuccessCubit, ContractState>(
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
                SizedBox(height: 20.h),
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
              const RectanglePaymentSignature(),
                SizedBox(height: 11.h),
                const CustomButtonPush1(),
                SizedBox(height: 11.h),
                const CustomContainerWalletBalance(),
                SizedBox(height: 26.h),
            Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                 Center(
                  child: Positioned(
                    top: -5,
                    // right: 30,
                    child: Container(
                      width: 350,
                      height: 120.h,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: const Color(0xff000000),
                        width: 1.w,
                      ),
                      ),
                          
                    ),
                  ),
                ),
                Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomFavorityPayment(
              paymentMethods: state.contractSuccess.data?.paymentMethods,
            ),
          ),
          Positioned(
            top: -3,
            right: 30,
            child: Container(
              // width: 200,
              // height: 50.h,
              color: const Color.fromARGB(255, 199, 214, 222),
              child: Center(
                child: Text(
                  'وسيلة الدفع المفضله *',
                  style: TextStyles.bold16,
                ),
              ),
            ),
          ),
         
        ],
      ),
    ),
  ],
),

                SizedBox(height: 15.h),
                Text(
                  'ملاحظة: لديك ساعة واحدة فقط للدفع',
                  style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),
                ),
                SizedBox(height: 5.h),
                Text('عملية إلغاء العقد تتم بشكل تلقائي ,', style: TextStyles.regular14),
                SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeView(crmUserId:globalData.crmUserId??'',)));
                      
                    },
                    child: Container(
                    width: 300.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xff24A19D),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'الرجوع للرئيسية',
                          style: TextStyles.regular16.copyWith(color: Colors.white),
                        )),
                                    
                                    ),
                  ),
                SizedBox(height: 50.h),

              ],
            );
          } else {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('لا يوجد عقود متاحه', style: TextStyles.bold20)),     
              ],
            
          );
          }
        },
        listener: (context, state) {
          if (state is ContractSuccessFailure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.error)
              )
            );
          }
        },
      ),
    );
  }
}
