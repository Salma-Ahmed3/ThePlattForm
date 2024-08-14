import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/custom_dot_circle.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/custom_photo.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/distinguished_services.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/social_media_icons_item.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/Hourly%20service/Presentatio/Views/hourly_service_view.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import 'package:nowproject/core/utils/custom_button_home_view.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const SizedBox(height: 33,),
              const CustomPhoto(),
              const SizedBox(height: 16,),
              const CustomDotCircle(),
              const SizedBox(height: 24,),
              const DistinguishedServices(),
              const SizedBox(height: 17,),
              CustomButtonHomeView(
                titletext: 'خدمة بالساعة',
                subtitletext:'خدمات منزلية بنظام الساعات',
                colorSmallContainer: const Color(0xffD6D6D6),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HourlyService()),
                  );
                },
              ),
              const SizedBox(height: 20,),
              CustomButtonHomeView(
                titletext: 'خدمة مقيمة',
                subtitletext: 'نظام الباقات الشهرية والسنوية',
                colorSmallContainer: Color(0xffACACAC),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TestPage()),
                  );
                },
              ),
              const SizedBox(height: 36,),
              const Text('نسعد بتواصلكم معنا من خلال', style: TextStyles.regular16,),
              const SizedBox(height: 23,),
              const SocialMediaIconsItem(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
