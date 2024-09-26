
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class RectanglePaymentSignature extends StatelessWidget {
  const RectanglePaymentSignature({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Payment Signature*',
              labelStyle: TextStyles.regular14,
              hintText: 'Payment Signature*',
              hintStyle: TextStyles.regular12,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}