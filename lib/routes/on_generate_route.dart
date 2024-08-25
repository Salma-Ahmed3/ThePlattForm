import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Add%20New%20Address%20Google%20Maps/add_new_address_google_maps_view.dart';
import 'package:nowproject/Screens/Choose%20Addrease/choose_addrese_view.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/choose_package_hourly_services_view.dart';
import 'package:nowproject/Screens/Choosing%20Carrer/chossing_carrer_view.dart';
import 'package:nowproject/Screens/Chossing%20Maid/chossing_mid_view.dart';
import 'package:nowproject/Screens/Contract%20Data/contract_data_view.dart';
import 'package:nowproject/Screens/Contract%20Details%20Maid/contract_details_maid_view.dart';
import 'package:nowproject/Screens/Contract%20Details/contract_details_view.dart';
import 'package:nowproject/Screens/Contract%20Success/contract_success_view.dart';
import 'package:nowproject/Screens/Contract%20attachments/contract_attachments_view.dart';
import 'package:nowproject/Screens/Contract/contract_view.dart';
import 'package:nowproject/Screens/Home/components/test_page.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/Screens/LogIn/login_view.dart';
import 'package:nowproject/Screens/Logo/logo_view.dart';
import 'package:nowproject/Screens/My%20Request%20Hours/my_request_hourly_view.dart';
import 'package:nowproject/Screens/My%20Requests/my_requests_view.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/Screens/SignUp/signup_view.dart';

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

   case ContractDataView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractDataView());

   case TestPage.routeName:
      return MaterialPageRoute(builder: (context) => const TestPage());
      
  //  case CustomDialog.routeName:
  //     return MaterialPageRoute(builder: (context) => const CustomDialog());

    default:
      return MaterialPageRoute(builder: (context) => const HomeView());
  }
}
