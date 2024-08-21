import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/widgets/custom_detailes_in_my_request.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomRectangleInMyRequest extends StatefulWidget {
  const CustomRectangleInMyRequest({
    super.key,
    required this.heightContainer,
    this.isLatest = false, required this.titleName,
  });

  final double heightContainer;
  final bool isLatest;
  final String titleName;

  @override
  State<CustomRectangleInMyRequest> createState() =>
      _CustomRectangleInMyRequestState();
}

class _CustomRectangleInMyRequestState
    extends State<CustomRectangleInMyRequest> {
  bool isRectangleVisible = false;

  void toggleRectangleVisibility() {
    setState(() {
      isRectangleVisible = !isRectangleVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 384,
          height: widget.heightContainer,
          decoration: BoxDecoration(
            color: const Color(0xffD6D6D6),
            borderRadius: isRectangleVisible
                ? const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 20),
              Text(widget.titleName,
              
               style: TextStyles.bold14),
              const SizedBox(width: 20),
              if (widget.isLatest)
                Container(
                  width: 74,
                  height: 27.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffACACAC),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'جديد',
                      style: TextStyles.regular12.copyWith(),
                    ),
                  ),
                ),
              IconButton(
                onPressed: toggleRectangleVisibility,
                icon: Icon(
                  isRectangleVisible ? Icons.remove : Icons.add,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        if (isRectangleVisible)
          Container(
            width: 383,
            height: 200,
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
            child: const CustomDetailesInMyRequest(showAllData: true),
          ),
        if (!isRectangleVisible)
          Container(
            width: 383,
            height: 90,
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
            child: const CustomDetailesInMyRequest(showAllData: false),
          ),
      ],
    );
  }
}
