import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Chossing%20Mid/Presentation/views/chossing_mid_view.dart';
import 'package:nowproject/Feauters/Contract%20Details/Presentation/view/contract_details_view.dart';
import 'package:nowproject/Feauters/Contract%20Success/Presentation/views/contract_success_view.dart';
import 'package:nowproject/Feauters/Contract%20attachments/Presentation/views/contract_attachments_view.dart';
import 'package:nowproject/Feauters/Contract/Presentation/View/contract_view.dart';
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
   case ChoosingMidView.routeName:
      return MaterialPageRoute(builder: (context) => const ChoosingMidView());
   case ContractDetailsView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractDetailsView());
   case ContractView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractView());
   case ContractAttachmentsView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractAttachmentsView());
   case ContractSuccessView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractSuccessView());
   case TestPage.routeName:
      return MaterialPageRoute(builder: (context) => const TestPage());
  //  case CustomDialog.routeName:
  //     return MaterialPageRoute(builder: (context) => const CustomDialog());

    default:
      return MaterialPageRoute(builder: (context) => const HomeView());
  }
}
