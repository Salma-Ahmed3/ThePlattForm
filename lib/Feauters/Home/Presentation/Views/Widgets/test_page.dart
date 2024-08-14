import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          
          children: [
            SizedBox(height: 100,),
            Text('TEST')
          ],
        ),
      ),
    );
  }
}