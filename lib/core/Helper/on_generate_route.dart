import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/home_view.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/login_view.dart';
import 'package:nowproject/Feauters/Logo/Presentation/Views/logo_view.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/Feauters/SignUp/Presentation/Views/signup_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LogoView.routeName:
      return MaterialPageRoute(builder: (context) => const LogoView());
   case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
   case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
   case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
   case NotificationView.routeName:
      return MaterialPageRoute(builder: (context) => const NotificationView());
   case TestPage.routeName:
      return MaterialPageRoute(builder: (context) => const TestPage());

    default:
      return MaterialPageRoute(builder: (context) => const HomeView());
  }
}
