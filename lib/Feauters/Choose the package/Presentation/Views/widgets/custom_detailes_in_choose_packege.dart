import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_detailes_in_choose_packege_item.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_packege_duration.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_salary.dart';
import 'package:nowproject/Feauters/Hourly%20service/Presentatio/Views/Widgets/custom_circle_avatar_dialog.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import '../../../../Add New Address/Presentation/Views/Widgets/custom_button_in_add_new_addrease.dart';

class CustomDetailesInChoosePackege extends StatefulWidget {
  const CustomDetailesInChoosePackege({super.key, required this.workerData, required this.heightContainer});
final String workerData;
final double heightContainer;
  @override
  State<CustomDetailesInChoosePackege> createState() =>
      _CustomDetailesInChoosePackegeState();
}

class _CustomDetailesInChoosePackegeState
    extends State<CustomDetailesInChoosePackege> {
  bool isRectangleVisible = false;

  void toggleRectangleVisibility() {
    setState(() {
      isRectangleVisible = !isRectangleVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            width: 384.w,
            height: widget.heightContainer,
            decoration: BoxDecoration(
              color: const Color(0xffD6D6D6),
              borderRadius: isRectangleVisible
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                    )
                  : BorderRadius.circular(14),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250.w,
                        child: Text(
                         widget.workerData,
                          style: TextStyles.bold14,
                        ),
                      ),
                       SizedBox(height: 12.h),
                      const CustomPackageDuration(),
                       SizedBox(height: 11.h),
                      const CustomSalary(),
                    ],
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.transparent,
                    child: IconButton(
                      onPressed: toggleRectangleVisibility,
                      icon: Icon(
                        isRectangleVisible ? Icons.remove : Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isRectangleVisible)
            GestureDetector(
              onTap: (){
                 showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogPersonal();
                },
              );
              },
              child: Container(
                width: 700.w,
                height: 260.h,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: const CustomDetailesInChoosePackegeItem(),
              ),
            ),
        ],
      ),
    );
  }
}

class CustomDialogPersonal extends StatefulWidget {
  const CustomDialogPersonal({super.key});

  static const routeName = 'CustomDialog';

  @override
  _CustomDialogPersonalState createState() => _CustomDialogPersonalState();
}

class _CustomDialogPersonalState extends State<CustomDialogPersonal> {
  bool isDialogExpanded = false;

  void toggleDialogSize() {
    setState(() {
      isDialogExpanded = !isDialogExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: isDialogExpanded ? 600.h : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 50), // Increased height to give space for the avatar
                  Text(
                    'كيف تريد اختيار العاملة',
                    style: TextStyles.semiBold18,
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButtonInAddNewAddrease(
                            onTap: toggleDialogSize,
                            alignment: Alignment.center,
                            colorBackGround: const Color(0xffEFEFEF),
                            tixtInButton: Center(
                              child: Text(
                                'من التطبيق',
                                style: TextStyles.semiBold14,
                              ),
                            ),
                            width: 130.w,
                            height: 90.h,
                            colorBorder: const Color(0xffEFEFEF),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: CustomButtonInAddNewAddrease(
                            onTap: toggleDialogSize,
                            alignment: Alignment.center,
                            colorBackGround: const Color(0xffEFEFEF),
                            tixtInButton: Center(
                              child: Text(
                                'من مقر الشركة',
                                style: TextStyles.semiBold14,
                              ),
                            ),
                            width: 130.w,
                            height: 90.h,
                            colorBorder: const Color(0xffEFEFEF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 39.h),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 
          isDialogExpanded ? 80: 286, 
          child: const CustomCircleAvatar(),
        ),
      ],
    );
  }
}

