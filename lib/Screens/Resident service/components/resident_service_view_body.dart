import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Add%20New%20Address/add_new_address_view.dart';
import 'package:nowproject/Screens/Resident%20service/components/button_in_resident_service.dart';
import 'package:nowproject/Screens/Resident%20service/components/global_data.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/cubit/Addrease/addrease_cubit.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResidentServiceViewBody extends StatefulWidget {
  const ResidentServiceViewBody({super.key, required this.onChanged});
  final void Function(bool) onChanged;

  @override
  State<ResidentServiceViewBody> createState() => _ResidentServiceViewBodyState();
}

class _ResidentServiceViewBodyState extends State<ResidentServiceViewBody> {
  int? selectedAddressIndex;

 @override
  void initState() {
    super.initState();
    _fetchData();
  }

 Future<void> _fetchData() async {
    // Retrieve crmUserId from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? crmUserId = prefs.getString('crmUserId');
    String? serviceId = globalData.serviceId;
    
    log("serviceId: $serviceId, crmUserId: $crmUserId");

    if (serviceId != null && crmUserId != null) {
      BlocProvider.of<AddreaseCubit>(context).getSavedAddress(serviceId, crmUserId);
    } else {
      print('serviceId or crmUserId is null. Make sure both are set.');
    }
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
                      Text('اختيار العنوان من عناوينك السابقة', style: TextStyles.regular18),
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
                                  showIsAddressMain: true,
                                  titleText: subLocation.displayValue ?? 'لا يوجد عناوين متاحة',
                                  subTitleText: subLocation.availabilityMessage ?? '',
                                  onChanged: (value) {
                                  if (subLocation.availabilityMessage ==
                                            null ||
                                        subLocation
                                            .availabilityMessage!.isEmpty) {
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
                                              child: Text('عفوا',
                                                  style: TextStyles.regular18
                                                      .copyWith(
                                                          color:
                                                              Colors.yellow)),
                                            ),
                                            content: Text(
                                                'اشعرني عند توافر الخدمة بالمدينه',
                                                style: TextStyles.regular18),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Center(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomButtonInAddNewAddrease(
                                                        onTap: () {
                                                          Navigator.pushNamed(
                                                              context,
                                                              AddNewAddressView
                                                                  .routeName);
                                                        },
                                                        alignment: Alignment
                                                            .centerRight,
                                                        colorBackGround:
                                                            Colors.transparent,
                                                        tixtInButton: Center(
                                                          child: Text(
                                                            'انشاء طلب جديد',
                                                            style: TextStyles
                                                                .regular18
                                                                .copyWith(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                        width: 200.w,
                                                        height: 40.h,
                                                        colorBorder:
                                                            const Color(
                                                                0xff000000),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      SizedBox(height: 16.h),
                                                      CustomButtonInAddNewAddrease(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        alignment: Alignment
                                                            .centerRight,
                                                        colorBackGround:
                                                            Colors.transparent,
                                                        tixtInButton: Center(
                                                          child: Text(
                                                            'الغاء',
                                                            style: TextStyles
                                                                .regular18
                                                                .copyWith(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                        width: 100.w,
                                                        height: 40.h,
                                                        colorBorder:
                                                            const Color(
                                                                0xff000000),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
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
                                      ? Colors
                                          .black
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
                  child: Text('لا توجد بيانات متاحة.',
                      style: TextStyles.regular18),
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
