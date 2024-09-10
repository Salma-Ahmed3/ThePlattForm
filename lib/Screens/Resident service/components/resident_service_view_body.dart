import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Resident%20service/components/button_in_resident_service.dart';
import 'package:nowproject/cubit/Addrease/addrease_cubit.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ResidentServiceViewBody extends StatefulWidget {
  const ResidentServiceViewBody({super.key, required this.onChanged, });
  final void Function(bool) onChanged;

  @override
  State<ResidentServiceViewBody> createState() => _ResidentServiceViewBodyState();
}

class _ResidentServiceViewBodyState extends State<ResidentServiceViewBody> {
  final String serviceId = '4dc0edee-8e92-ee11-b766-000d3a236f24';
  final String contactId = '1f87f7f3-6466-4013-9be3-e23ce4e62a55';
       
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddreaseCubit>(context).getSavedAddress(
      serviceId , contactId
    );
  }

   @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: BlocConsumer<AddreaseCubit, SavedAddressState>(
          builder: (context, state) {
            if (state is SavedAddressUpdate) {
              final mainLocation = state.mainLocation;

              if (mainLocation.displayValue.isNotEmpty &&
                  mainLocation.availabilityMessage.isNotEmpty) {
                return Column(
                  children: [
                    SizedBox(height: 30.h),
                    Text('اختيار العنوان من عناوينك السابقة', style: TextStyles.regular18),
                    SizedBox(height: 32.h),
                  ButtonInResidentService(
                        titleText: mainLocation.displayValue,
                        subTitleText: mainLocation.availabilityMessage,
                        isAddressMain: true,
                        showIsAddressMain: false,
                        onTapAction: true,
                        onChanged: widget.onChanged,
                        colorBackGroun: Colors.transparent,
                        colorBorder: const Color(0xffACACAC),
                      ),
                    SizedBox(height: 24.h),
                  ],
                );
              } else {
                return Center(
                  child: Text('لا توجد بيانات متاحة.', style: TextStyles.regular18),
                );
              }
            } else if (state is SavedAddressLoading) {
              return Center(
                child: SizedBox(
                  width: 80.w,
                  height: 100.h,
                  child: Image.asset(Assets.imagesclockloader),
                ),
              );
            } else if (state is SavedAddressFailure) {
              return Center(child: Text(state.error));
            } else {
              return const Center(child: Text('هناك خطأ ما'));
            }
          },
          listener: (context, state) {
            print('State changed: $state');
            
          },
        ),
      ),
    );
  }
}