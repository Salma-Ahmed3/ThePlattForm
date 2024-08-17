import 'package:flutter/material.dart';
import 'package:nowproject/core/Widgets/custom_check_box.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class ButtonInResidentService extends StatefulWidget {
  const ButtonInResidentService({super.key, required this.titletext, this.onCheck, required this.onChanged, required this.colorBackGroun, required this.colorBorder,});
  final ValueChanged<bool> onChanged;
  
  // final void Function()? onTap;
  final void Function()? onCheck; 
  final String titletext;
  final Color colorBackGroun;
  final Color colorBorder;

  @override
  State<ButtonInResidentService> createState() => _ButtonInResidentServiceState();

}

class _ButtonInResidentServiceState extends State<ButtonInResidentService> {
  bool isTermsAccepted = false;
 
  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      // onTap: widget.onTap ?? () {

      // },
      child: Stack(
        children: [
          Container(
     
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: widget.colorBackGroun,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: widget.colorBorder,
                width: 1,
              ),
            ),
          ),
         
          Positioned(
            top: 26,
            right: 22,
            bottom: 26,
            left: 64,
            child: 
             Text(widget.titletext, style: TextStyles.regular16)),
          
          Positioned(
            top: 26,
            right: 22,
            bottom: 26,
            left: 64,
            child: 
             Text(widget.titletext, style: TextStyles.regular16)),
          
   
            Positioned(
            top: 24,
            // right: 64,
            bottom: 42,
            left: 25,
          child: GestureDetector(
              onTap: widget.onCheck ?? () {
               
              },
              child:   CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),),
         
      ),],
      ),
    );
  }
}
