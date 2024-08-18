 import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(20),
       
      ),
      child: 
           GestureDetector(
            onTap:   Navigator.of(context).pop,
            child: Icon(Icons.close),
         )
 
    );}
}