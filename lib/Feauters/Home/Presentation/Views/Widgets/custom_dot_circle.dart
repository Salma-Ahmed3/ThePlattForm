import 'package:flutter/material.dart';

class CustomDotCircle extends StatefulWidget {
  const CustomDotCircle({super.key});

  @override
  State<CustomDotCircle> createState() => _CustomDotCircleState();
}

class _CustomDotCircleState extends State<CustomDotCircle> {
  int selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) => _buildDot(index)),
    );
  }

  Widget _buildDot(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index; 
        });
      },
      child: Container(
        width: 16,
        height: 16,
        margin: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedIndex == index
              ? const Color(0xffACACAC) 
              : Colors.white, 
          border: Border.all(
            color: const Color(0xffACACAC), 
            width: 1,
          ),
        ),
      ),
    );
  }
}