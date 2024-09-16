import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_check_box/custom_check_box.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ButtonInResidentService extends StatelessWidget {
  const ButtonInResidentService({
    super.key,
    required this.isSelected,
    required this.onChanged,
    this.onCheck,
    required this.colorBackGroun,
    required this.colorBorder,
    this.isAddressMain,
    required this.showIsAddressMain,
    this.onTapAction,
    required this.titleText,
    required this.subTitleText,
  });

  final bool isSelected;
  final ValueChanged<bool> onChanged;
  final void Function()? onCheck;
  final Color colorBackGroun;
  final Color colorBorder;
  final bool? isAddressMain;
  final bool showIsAddressMain;
  final bool? onTapAction;
  final String titleText;
  final String subTitleText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isSelected);
      },
      child: Container(
        width: double.infinity,
        height: 100.h,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffF8F8F8) : colorBackGroun,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? Colors.black : colorBorder,
            width: 1.w,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      titleText,
                      style: TextStyles.regular16,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      subTitleText,
                      style: TextStyles.regular12.copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              GestureDetector(
                onTap: onCheck ?? () {},
                child: CustomCheckBox(
                  onChecked: (value) {
                    onChanged(value);
                  },
                  isChecked: isSelected,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
