import 'package:flutter/material.dart';

class CustomDotCircle extends StatelessWidget {
  const CustomDotCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,    
         children: List.generate(3, (index) => _buildDot()),
    );
  }

  Widget _buildDot() {
    return Container(
      width: 16,
      height: 16,
      margin: const EdgeInsets.symmetric(horizontal: 7), 
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color:  Color(0xff707070) , 
      ),
    );
  }
}