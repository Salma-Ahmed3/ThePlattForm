import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20Addrease/Presentation/Views/Widgets/custom_address_not_avliable.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/Resident%20service/Presentation/Views/Widgets/resident_service_view_body.dart';

class ChooseAddressViewBody extends StatelessWidget {
  const ChooseAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            ResidentServiceViewBody(onChanged: (bool value) { 
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TestPage()),
            );
            },),
            const CustomAddressNotAvliable(),
            
      ],
    );
  }
}
