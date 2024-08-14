import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/social_media_icons.dart';

class SocialMediaIconsItem extends StatelessWidget {
  const SocialMediaIconsItem({super.key, });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(right: 25 , ),
      child: Row(
        children: [
        SocialMediaIcons(icon:  Image.asset ('assets/images/WhatsApp.png'),),
              const SizedBox(width: 10,),
      
        SocialMediaIcons(icon:  Image.asset ('assets/images/xApp.png'),),
              const SizedBox(width: 10,),
      
        SocialMediaIcons(icon: const Icon(Icons.link , color: Colors.white,)),
              const SizedBox(width: 10,),
      
        SocialMediaIcons(icon:  Image.asset ('assets/images/WhatsApp.png'),),
              const SizedBox(width: 10,),
      
          const SocialMediaIcons(icon: Icon(Icons.facebook , color: Colors.white,),),
              const SizedBox(width: 10,),
      
        SocialMediaIcons(icon:  Image.asset ('assets/images/TikTok.png'),),
        ],
      ),
    );
  }
}