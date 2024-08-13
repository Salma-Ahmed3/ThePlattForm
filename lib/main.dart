import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Logo/Presentation/Views/logo_view.dart';

void main() {
  runApp(const PlattForm());
}

class PlattForm extends StatelessWidget {
  const PlattForm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoView(),
    );}}