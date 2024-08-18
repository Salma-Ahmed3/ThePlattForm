import 'package:flutter/material.dart';
import 'package:nowproject/core/Widgets/custom_check_box.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class ButtonInResidentServiceChooseCareer extends StatefulWidget {
  const ButtonInResidentServiceChooseCareer({
    super.key,
    required this.titletext,
    required this.subtext,
    this.onCheck,
    required this.onChanged,
    required this.colorBackGroun,
    required this.colorBorder,
  });

  final ValueChanged<bool> onChanged;
  final void Function()? onCheck;
  final String titletext;
  final String subtext;
  final Color colorBackGroun;
  final Color colorBorder;

  @override
  State<ButtonInResidentServiceChooseCareer> createState() =>
      _ButtonInResidentServiceChooseCareerState();
}

class _ButtonInResidentServiceChooseCareerState
    extends State<ButtonInResidentServiceChooseCareer> {
  bool isTermsAccepted = false;

 

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: 343,
            height: 76,
            decoration: BoxDecoration(
              color: isTermsAccepted ? Color(0xffF8F8F8) : widget.colorBackGroun,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: isTermsAccepted ? Colors.black : widget.colorBorder,
                width: 1,
              ),
            ),
          child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.titletext, style: TextStyles.bold14),
                SizedBox(height: 5,),
                Text(widget.subtext, style: TextStyles.regular12),
              ],
            ),
          ),),
          Positioned(
            top: 26,
            left: 15,
            child: GestureDetector(
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
            ),
            ],
            
            );
  }
}
