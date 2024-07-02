import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/services/services.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/views/screens/contacts_view/widgets/social_media_button.dart';

class ContactViewWidgets {
  static Text contactMe() => Text(
        "Contact Me",
        style: AppStyles.headlineMedium,
      );

  static Row socialContactView({required bool isMobileView}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialMediaButton(
            assetIcon: SocialIconAssets.mailImage,
            socialName: SocialContact.mail,
            mobileView: isMobileView,
            onTap: () => Services.sendEmail(),
          ),
          SocialMediaButton(
            assetIcon: SocialIconAssets.linkedInImage,
            socialName: SocialContact.linkedIn,
            mobileView: isMobileView,
            onTap: () => Services.openLinkedIn(),
          ),
          SocialMediaButton(
            assetIcon: SocialIconAssets.telegramImage,
            socialName: SocialContact.telegram,
            mobileView: isMobileView,
            onTap: () => Services.openTelegramApp(),
          ),
          SocialMediaButton(
            assetIcon: SocialIconAssets.whatsappImage,
            socialName: SocialContact.whatsapp,
            mobileView: isMobileView,
            onTap: () => Services.openWhatsApp(),
          ),
        ],
      );
}
