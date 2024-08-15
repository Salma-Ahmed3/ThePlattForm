import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Logo/Presentation/Views/logo_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LogoView.routeName:
      return MaterialPageRoute(builder: (context) => const LogoView());

    default:
      return MaterialPageRoute(builder: (context) => const LogoView());
  }
}
