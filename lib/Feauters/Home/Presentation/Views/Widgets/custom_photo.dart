import 'package:flutter/widgets.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/custom_text_in_photo.dart';

class CustomPhoto extends StatelessWidget {
  const CustomPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Stack(
              children: [ Container(
                  width: 365,
                  height: 189,
                  decoration: BoxDecoration(
                    color: const Color(0xffD6D6D6),
                    borderRadius: BorderRadius.circular(14), // Adjust the value as needed
                  ),
                ),
                const CustomTextInPhoto()
              ],
            ),
          );
  }
}
