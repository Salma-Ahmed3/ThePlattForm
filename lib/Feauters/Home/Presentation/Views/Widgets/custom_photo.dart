import 'package:flutter/widgets.dart';

class CustomPhoto extends StatelessWidget {
  const CustomPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
            child: Container(
              width: 365,
              height: 189,
              decoration: BoxDecoration(
                color: Color(0xffD6D6D6),
                borderRadius: BorderRadius.circular(14), // Adjust the value as needed
              ),
            ),
          );
  }
}