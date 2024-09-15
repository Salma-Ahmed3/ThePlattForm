import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Add%20New%20Address/add_new_address_view.dart';
import 'package:nowproject/Screens/Resident%20service/components/button_in_resident_service.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/cubit/Addrease/addrease_cubit.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ResidentServiceViewBody extends StatefulWidget {
  const ResidentServiceViewBody({super.key, required this.onChanged});
  final void Function(bool) onChanged;

  @override
  State<ResidentServiceViewBody> createState() => _ResidentServiceViewBodyState();
}
class _ResidentServiceViewBodyState extends State<ResidentServiceViewBody> {
  final String serviceId = 'c97fdb23-4687-ec11-a837-000d3abe20f8';
  final String contactId = '1f87f7f3-6466-4013-9be3-e23ce4e62a55';
  int? selectedAddressIndex;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddreaseCubit>(context).getSavedAddress(serviceId, contactId);
  }

  @override
  void dispose() {
    selectedAddressIndex = null;
    super.dispose();
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
              if (mainLocation.mainLocations != null &&
                  mainLocation.subLocation != null &&
                  mainLocation.subLocation!.isNotEmpty) {
                return SizedBox(
                  height: 650.h,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Text(
                        'اختيار العنوان من عناوينك السابقة',
                        style: TextStyles.regular18,
                      ),
                      SizedBox(height: 32.h),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: mainLocation.subLocation!.length,
                          itemBuilder: (context, index) {
                            final subLocation = mainLocation.subLocation![index];
                            return Column(
                              children: [
                                ButtonInResidentService(
                                  titleText: subLocation.displayValue ?? 'لا يوجد عنواين متاحة',
                                  subTitleText: subLocation.availabilityMessage ?? '',
                                  isAddressMain: true,
                                  showIsAddressMain: false,
                                  onTapAction: true,
                                  onChanged: (value) {
                                    if (subLocation.availabilityMessage == null ||
                                        subLocation.availabilityMessage!.isEmpty) {
                                      setState(() {
                                        selectedAddressIndex = index;
                                      });
                                      widget.onChanged(value);
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Align(
                                              alignment: Alignment.center,
                                              child: Text('عفوا'  ,
                                              style: TextStyles.regular18.copyWith(color: Colors.yellow)),
                                            ),
                                            content: Text('اشعرني عند توافر الخدمة بالمدينه' , style: TextStyles.regular18),
                                            actions: [
                                              
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child:
                                                  Center(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        CustomButtonInAddNewAddrease(
                                                                                onTap: () {
                                                                                  Navigator.pushNamed(context,AddNewAddressView.routeName);
                                                                                },
                                                                                alignment: Alignment.centerRight,
                                                                                colorBackGround: Colors.transparent,
                                                                                tixtInButton: Center(
                                                                                  child: Text(
                                                                                    'انشاء طلب جديد',
                                                                                    style: TextStyles.regular18.copyWith(color: Colors.black),
                                                                                  ),
                                                                                ),
                                                                                width: 200.w,
                                                                                height: 40.h,
                                                                                colorBorder: const Color(0xff000000),
                                                                                borderRadius: BorderRadius.circular(4),
                                                                              ),
                                                                              SizedBox(height: 16.h),
                                                                              CustomButtonInAddNewAddrease(
                                                                                onTap: () {
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                alignment: Alignment.centerRight,
                                                                                colorBackGround: Colors.transparent,
                                                                                tixtInButton: Center(
                                                                                  child: Text(
                                                                                    'الغاء',
                                                                                    style: TextStyles.regular18.copyWith(color: Colors.black),
                                                                                  ),
                                                                                ),
                                                                                width: 100.w,
                                                                                height: 40.h,
                                                                                colorBorder: const Color(0xff000000),
                                                                                borderRadius: BorderRadius.circular(4),
                                                                              ),
                                                      ],
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  },
                                  colorBackGroun: Colors.transparent,
                                  colorBorder: selectedAddressIndex == index
                                      ? Colors.black // Highlight selected address
                                      : const Color(0xffACACAC),
                                  isSelected: selectedAddressIndex == index, 
                                ),
                                SizedBox(height: 16.h),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
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
          listener: (context, state) {},
        ),
      ),
    );
  }
}
