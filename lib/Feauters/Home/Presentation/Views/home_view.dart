import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/home_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/app_images.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const HomeViewBody(),
        drawer: const MenueBar(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'مرحبا عميلنا العزيز',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}



class MenueBar extends StatefulWidget {
  const MenueBar({super.key});

  @override
  _MenueBarState createState() => _MenueBarState();
}

class _MenueBarState extends State<MenueBar> {
  bool isNightMode = false;

  void toggleNightMode() {
    setState(() {
      isNightMode = !isNightMode;
    });
    if (isNightMode) {
      setNightMode();
    } else {
      setLightMode();
    }
  }

  void setNightMode() {
  }

  void setLightMode() {
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                children: [
                  const SizedBox(height: 81),
                  const Text('محمد مصطفى', style: TextStyles.regular20),
                  const SizedBox(height: 59),
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 237, 234, 234),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 11),
                        Image.asset(Assets.imagesWalletIcon),
                        const SizedBox(width: 9),
                        const Text('رصيد المحفظة', style: TextStyles.regular16),
                        const SizedBox(width: 17),
                        const Text('‏80,228.58 ريال', style: TextStyles.regular16),
                        const SizedBox(width: 11),
                      ],
                    ),
                  ),
                  const SizedBox(height: 39),
                  const Text('لوحة المعلومات', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('الاشعارات', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('تعاقداتي', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('طلباتي', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('طلبات الأفراد', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('زياراتي', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('تذاكر الدعم والمساعدة', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('اتصل بنا', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('English', style: TextStyles.regular16),
                  const SizedBox(height: 24),
                  const Text('تسجيل الخروج', style: TextStyles.regular16),
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 232, 229, 229),
            child: SwitchListTile(
              // white mode
              inactiveThumbImage: AssetImage(Assets.imagesSunWhitMode),
              inactiveTrackColor: Colors.white,
              inactiveThumbColor: Color(0xff24A19D),
              // dark mode
               activeColor:Colors.black,
              activeTrackColor: Colors.white,
              // activeThumbImage: AssetImage(Assets.imagesMoonDarkMode),
              // inactiveThumbColor: Colors.green,
              title: const Text('وضع ليلي', style: TextStyles.regular14),
              value: isNightMode,
              onChanged: (bool value) {
                toggleNightMode();
              },
            ),
          ),
        ],
      ),
    );
  }
}
