
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key, required this.icon});
final Widget icon;


  @override
  Widget build(BuildContext context) {
    return  Row(
       children: [
       CircleAvatar(
         radius: 20,
         backgroundColor: Color(0xffACACAC),
         child: 
      icon
       )
      ],
    );
  }
}
