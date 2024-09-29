import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Add%20New%20Address/add_new_address_view.dart';
import 'package:nowproject/Screens/LogIn/login_view.dart';
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
  State<ResidentServiceViewBody> createState() =>
      _ResidentServiceViewBodyState();
}

class _ResidentServiceViewBodyState extends State<ResidentServiceViewBody> {
  int? selectedAddressIndex;
  bool isAuthenticated = false; 

  @override
  void initState() {
    super.initState();
    _checkAuthentication(); 
  }

  Future<void> _checkAuthentication() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? crmUserId =
        prefs.getString('crmUserId');

    if (crmUserId == null) {
      Future.delayed(Duration.zero, () {
        _showLoginDialog();
      });
      setState(() {
        isAuthenticated = false; 
      });
    } else {
      setState(() {
        isAuthenticated = true;
      });
      _fetchData();
    }
  }

  Future<void> _fetchData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? crmUserId = prefs.getString('crmUserId');
    String? serviceId = globalData.serviceId;

    log("serviceId: $serviceId, crmUserId: $crmUserId");

    if (serviceId != null && crmUserId != null) {
      BlocProvider.of<AddreaseCubit>(context)
          .getSavedAddress(serviceId, crmUserId);
    }
  }

  void _showLoginDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'عذراً',
              style: TextStyles.regular18.copyWith(color: Colors.red),
            ),
          ),
          content: Text(
            'يجب عليك تسجيل الدخول أولاً لكي تتمكن من اختيار العنوان',
            style: TextStyles.regular18,
          ),
          actions: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); 
                    },
                    child: Text(
                      'الغاء',
                      style: TextStyles.regular18.copyWith(color: Colors.red),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, LoginView.routeName); 
                    },
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyles.regular18.copyWith(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: BlocConsumer<AddreaseCubit, SavedAddressState>(
          builder: (context, state) {
            if (!isAuthenticated) {
              return const Center(
                child: SizedBox(),
              );
            }

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
                      Text('اختيار العنوان من عناوينك السابقة',
                          style: TextStyles.regular18
                              .copyWith(color: Colors.green[200])),
                      SizedBox(height: 32.h),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: mainLocation.subLocation!.length,
                          itemBuilder: (context, index) {
                            final subLocation =
                                mainLocation.subLocation![index];
                            return Column(
                              children: [
                                ButtonInResidentService(
                                  showIsAddressMain: true,
                                  titleText: subLocation.displayValue ??
                                      'لا يوجد عناوين متاحة',
                                  subTitleText:
                                      subLocation.availabilityMessage ?? '',
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
                                                              Colors.red)),
                                            ),
                                            content: Text(
                                                'اشعرني عند توافر الخدمة بالمدينه',
                                                style: TextStyles.regular18.copyWith(
                                                   color:  const Color.fromARGB(255, 32, 32, 77)
                                                )),
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
                                                            Colors.white,
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
                                                                .circular(10),
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
                                                            const Color(
                                                                0xffB64444),
                                                        tixtInButton: Center(
                                                          child: Text(
                                                            'الغاء',
                                                            style: TextStyles
                                                                .regular18
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                        width: 100.w,
                                                        height: 40.h,
                                                        colorBorder: const Color
                                                            .fromARGB(
                                                            255, 182, 68, 68),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
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
                                      ? Colors.black
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
                        style: TextStyles.regular18));
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
              return const SizedBox();
            }
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
