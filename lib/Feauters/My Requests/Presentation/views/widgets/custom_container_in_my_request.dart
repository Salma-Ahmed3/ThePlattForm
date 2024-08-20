import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomContainerInMyRequest extends StatefulWidget {
  const CustomContainerInMyRequest({super.key, required this.nameMyRequest, this.onTap});
  final String nameMyRequest;
  final void Function()? onTap;

  @override
  _CustomContainerInMyRequestState createState() => _CustomContainerInMyRequestState();
}

class _CustomContainerInMyRequestState extends State<CustomContainerInMyRequest> {
  bool isSelected = false;

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSelection,
      child: Container(
        width: 106,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: isSelected ? Colors.black : const Color(0xffD6D6D6),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.nameMyRequest,
            style: TextStyles.regular12.copyWith(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}