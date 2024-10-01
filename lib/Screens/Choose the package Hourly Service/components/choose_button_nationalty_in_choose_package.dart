import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonNationaltyInChoossePackage extends StatelessWidget {
  const CustomButtonNationaltyInChoossePackage({
    super.key,
    required this.nationalityText,
    required this.image,
    required this.isSelected,
    required this.onSelect,
  });

  final String nationalityText;
  final String image;
  final bool isSelected;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Row(
        children: [
          CustomButtonInAddNewAddrease(
            alignment: Alignment.center,
            colorBackGround:
                isSelected ? const Color(0xffD6D6D6) : Colors.white,
            tixtInButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Image.network(
                    width: 25.w,
                    height: 25.h,
                    image.isNotEmpty ? image : Assets.imagesUserIcon,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
                    },
                  ),
                  const SizedBox(width: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      nationalityText,
                      style: TextStyles.regular12.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            width: 117.w,
            height: 35.h,
            colorBorder: isSelected ? Colors.black : const Color(0xffD6D6D6),
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}

class NationalitySelector extends StatefulWidget {
  @override
  _NationalitySelectorState createState() => _NationalitySelectorState();
}

class _NationalitySelectorState extends State<NationalitySelector> {
  String? selectedNationality;

  void selectNationality(String nationality) {
    setState(() {
      selectedNationality = nationality;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButtonNationaltyInChoossePackage(
          nationalityText: 'Nationality 1',
          image: 'url_to_image_1',
          isSelected: selectedNationality == 'Nationality 1',
          onSelect: () => selectNationality('Nationality 1'),
        ),
        CustomButtonNationaltyInChoossePackage(
          nationalityText: 'Nationality 2',
          image: 'url_to_image_2',
          isSelected: selectedNationality == 'Nationality 2',
          onSelect: () => selectNationality('Nationality 2'),
        ),
        CustomButtonNationaltyInChoossePackage(
          nationalityText: 'Nationality 3',
          image: 'url_to_image_3',
          isSelected: selectedNationality == 'Nationality 3',
          onSelect: () => selectNationality('Nationality 3'),
        ),
      ],
    );
  }
}
