import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Logo/Presentation/Views/logo_view.dart';
import 'package:nowproject/core/Helper/on_generate_route.dart';

void main() {
  runApp(const PlattForm());
}

class PlattForm extends StatelessWidget {
  const PlattForm({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: LogoView.routeName,
      home: LogoView(),
    );}}