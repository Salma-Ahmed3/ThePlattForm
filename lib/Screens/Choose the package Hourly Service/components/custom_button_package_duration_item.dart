import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_package_duration.dart';

class CustomButtonPackageDurationItem extends StatefulWidget {
  const CustomButtonPackageDurationItem({super.key});

  @override
  State<CustomButtonPackageDurationItem> createState() =>
      _CustomButtonPackageDurationItemState();
}

class _CustomButtonPackageDurationItemState
    extends State<CustomButtonPackageDurationItem> {
  int? selectedIndex;

  void _handleButtonTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButtonPackageDuration(
          text: 'زيارة مفردة',
          isSelected: selectedIndex == 0,
          onTap: () => _handleButtonTap(0),
        ),
        SizedBox(
          width: 6,
        ),
        CustomButtonPackageDuration(
          text: 'زيارة متعددة',
          isSelected: selectedIndex == 1,
          onTap: () => _handleButtonTap(1),
        ),
        SizedBox(
          width: 6,
        ),
       
      ],
    );
  }
}
