import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Add%20New%20Address%20Google%20Maps/Presentation/views/add_new_address_google_maps_view.dart';
import 'package:nowproject/Feauters/Choose%20Addrease/Presentation/choose_addrese_view.dart';
import 'package:nowproject/Feauters/Choose%20the%20package%20Hourly%20Service/Presentation/Views/choose_package_hourly_services_view.dart';
import 'package:nowproject/Feauters/Choosing%20Carrer/Presentation/Views/chossing_carrer_view.dart';
import 'package:nowproject/Feauters/Chossing%20Maid/Presentation/views/chossing_mid_view.dart';
import 'package:nowproject/Feauters/Contract%20Details%20Maid/Presentation/views/contract_details_maid_view.dart';
import 'package:nowproject/Feauters/Contract%20Details/Presentation/view/contract_details_view.dart';
import 'package:nowproject/Feauters/Contract%20Success/Presentation/views/contract_success_view.dart';
import 'package:nowproject/Feauters/Contract%20attachments/Presentation/views/contract_attachments_view.dart';
import 'package:nowproject/Feauters/Contract/Presentation/View/contract_view.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/home_view.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/login_view.dart';
import 'package:nowproject/Feauters/Logo/Presentation/Views/logo_view.dart';
import 'package:nowproject/Feauters/My%20Request%20Hours/Presentation/views/my_request_hourly_view.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/my_requests_view.dart';
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

   case ChoosingMaidView.routeName:
      return MaterialPageRoute(builder: (context) => const ChoosingMaidView());

   case ContractDetailsView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractDetailsView());

   case ContractView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractView());

   case ContractAttachmentsView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractAttachmentsView());

   case ContractSuccessView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractSuccessView());

   case MyRequestsView.routeName:
      return MaterialPageRoute(builder: (context) => const MyRequestsView());

   case ContractDetailsMaidView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractDetailsMaidView());

   case MyRequestHourlyView.routeName:
      return MaterialPageRoute(builder: (context) => const MyRequestHourlyView());

   case ChossingCarrerView.routeName:
      return MaterialPageRoute(builder: (context) => const ChossingCarrerView());

   case ChooseAddreseView.routeName:
      return MaterialPageRoute(builder: (context) => const ChooseAddreseView());

   case AddNewAddressGoogleMapsView.routeName:
      return MaterialPageRoute(builder: (context) => const AddNewAddressGoogleMapsView());

   case ChoosePackageHourlyServicesView.routeName:
      return MaterialPageRoute(builder: (context) => const ChoosePackageHourlyServicesView());

   case TestPage.routeName:
      return MaterialPageRoute(builder: (context) => const TestPage());
      
  //  case CustomDialog.routeName:
  //     return MaterialPageRoute(builder: (context) => const CustomDialog());

    default:
      return MaterialPageRoute(builder: (context) => const HomeView());
  }
}
