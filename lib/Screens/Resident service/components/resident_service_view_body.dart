import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Resident%20service/components/button_in_resident_service.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/cubit/Addrease/addrease_cubit.dart'; // Import your cubit

class ResidentServiceViewBody extends StatelessWidget {
  const ResidentServiceViewBody({super.key, required this.onChanged});
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    context.read<AddreaseCubit>().fetchAddrease('contactId');  // Fetch addresses

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: BlocBuilder<AddreaseCubit, AddreaseState>(
        builder: (context, state) {
          if (state is AddreaseLoading) {
            return   Center(
            child: SizedBox(
              width: 80.w,
              height: 100.h,
              child: Image.asset(Assets.imagesclockloader),
              ),
            );
          } else if (state is AddreaseFailure) {
            return Center(
              child:
              Text(state.error, style: TextStyles.regular18),);
          } else if (state is AddreaseSuccess) {
            return Column(
              children: [
                SizedBox(height: 30.h),
                Text('اختيار العنوان من عناوينك السابقة', style: TextStyles.regular18),
                SizedBox(height: 32.h),
                ...state.addrease.map((address) {
                  return Column(     
                    children: [
                      ButtonInResidentService(
                        titletext: address.mainLocations.toString(),
                        onChanged: onChanged,
                        colorBackGroun: Colors.transparent,
                        colorBorder: const Color(0xffACACAC),
                      ),
                      SizedBox(height: 12.h),
                    ],
                  );
                }).toList(),
              ],
            );
          } else {
            return const Center(child: Text("لا يوجد عنواين متاحه"));
          }
        },
      ),
    );
  }
}
