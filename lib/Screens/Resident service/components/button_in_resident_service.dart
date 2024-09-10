import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_check_box/custom_check_box.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ButtonInResidentService extends StatefulWidget {
  const ButtonInResidentService({
    super.key,
    this.onCheck,
    required this.onChanged,
    required this.colorBackGroun,
    required this.colorBorder,
    this.isAddressMain,
    required this.showIsAddressMain,
    this.onTapAction,
    required this.titleText,
    required this.subTitleText,
  });

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
  State<ButtonInResidentService> createState() =>
      _ButtonInResidentServiceState();
}

class _ButtonInResidentServiceState extends State<ButtonInResidentService> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTermsAccepted = !isTermsAccepted;
          widget.onChanged(isTermsAccepted);
        });
      },
      child: Container(
        width: double.infinity,
        height: 100.h,
        decoration: BoxDecoration(
          color: isTermsAccepted ? Color(0xffF8F8F8) : widget.colorBackGroun,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isTermsAccepted ? Colors.black : widget.colorBorder,
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
                      widget.titleText,
                      style: TextStyles.regular16,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      widget.subTitleText,
                      style: TextStyles.regular16,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              GestureDetector(
                onTap: widget.onCheck ?? () {},
                child: CustomCheckBox(
                  onChecked: (value) {
                    setState(() {
                      isTermsAccepted = value;
                      widget.onChanged(value);
                    });
                  },
                  isChecked: isTermsAccepted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
