import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20Addrease/choose_addrese_view.dart';
import 'package:nowproject/Screens/Resident%20service/components/global_data.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/enums.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../Models/services.dart';
import '../custom_button/custom_button_in_add_new_addrease.dart';

class CustomDialogHourly extends StatelessWidget {
  final String titleText;
  final Service service; 

  const CustomDialogHourly({
    super.key, 
    required this.titleText,
    required this.service,
  });

  static const routeName = 'CustomDialog';

  @override
  Widget build(BuildContext context) {
    // Access globalData here
    GlobalData globalData = GlobalData();

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 19),
                  SvgPicture.asset(Assets.imagesErrorIcon),
                  const SizedBox(height: 25),
                  Center(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        titleText,
                        style: TextStyles.semiBold18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButtonInAddNewAddrease(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        alignment: Alignment.centerRight,
                        colorBackGround: Colors.transparent,
                        tixtInButton: Center(
                          child: Text(
                            'رجوع',
                            style: TextStyles.regular18,
                          ),
                        ),
                        width: 108.w,
                        height: 47.h,
                        colorBorder: const Color(0xff000000),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      CustomButtonInAddNewAddrease(
                      onTap: () {
                        BlocProvider.of<FirstStepCubit>(context).serviceType = ServiceType.hourlyServiceType;
                        globalData.serviceId = service.id;
                        BlocProvider.of<FirstStepCubit>(context).fetchFirstStep(
                          serviceType: ServiceType.hourlyServiceType,
                          object:FirstStepObjParameter(
                                      serviceId: service.id,
                                      fromOffer: false,
                                      ),
                          context: context,
                        );
                      },
                      alignment: Alignment.centerRight,
                      colorBackGround: Colors.black,
                      tixtInButton: Center(
                        child: Text(
                          'التالي',
                          style: TextStyles.regular18.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      width: 108.w,
                      height: 47.h,
                      colorBorder: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
