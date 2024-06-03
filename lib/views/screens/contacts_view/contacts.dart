import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/views/screens/contacts_view/widgets/social_media_button.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Contact Me",
          style: TextStyle(fontSize: 7.sp, fontWeight: FontWeight.bold),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialMediaButton(
              assetIcon: SocialIconAssets.mailImage,
              socialName: SocialContact.mail,
            ),
            SocialMediaButton(
              assetIcon: SocialIconAssets.instagramImage,
              socialName: SocialContact.instagram,
            ),
            SocialMediaButton(
              assetIcon: SocialIconAssets.telegramImage,
              socialName: SocialContact.telegram,
            ),
            SocialMediaButton(
              assetIcon: SocialIconAssets.whatsappImage,
              socialName: SocialContact.whatsapp,
            ),
          ],
        ),
      ],
    );
  }
}
