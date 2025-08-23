import 'package:flutter/material.dart';

import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/services/services.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/screens/home_view/widgets/social_contact.dart';

class HomeWidgets {
  static Row buildSocialContact() => Row(
        spacing: 10,
        children: [
          HomeSocialContactButton(
            assetIcon: SocialIconAssets.mailImage,
            onTap: () => Services.sendEmail(),
          ),
          HomeSocialContactButton(
            assetIcon: SocialIconAssets.linkedInImage,
            onTap: () => Services.openLinkedIn(),
          ),
        ],
      );

  static Column buildWelcomeNote() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          Row(
            children: [
              Image.asset(
                HomeAssets.waveHandImage,
                height: 50,
                width: 50,
              ),
              Text(
                HomeConstants.heyThere,
                style: AppStyles.titleLarge,
              ),
            ],
          ),
          Text(
            HomeConstants.welcomeHeader,
            style: AppStyles.titleLarge,
          ),
          Text(
            HomeConstants.welcomeNote,
            style: AppStyles.bodyMedium.copyWith(color: AppColors.grey),
          ),
        ],
      );

  static ElevatedButton buildResumeButton(
          {required void Function()? tapAction,
          required String buttonName,
          required IconData buttonIcon}) =>
      ElevatedButton(
        onPressed: tapAction,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                buttonName,
                style: AppStyles.displayMedium,
              ),
              Icon(
                buttonIcon,
                size: 7,
              )
            ],
          ),
        ),
      );

  static ElevatedButton resumeHomeButton() => buildResumeButton(
        tapAction: () => Services.downloadFile(),
        buttonName: HomeConstants.resume,
        buttonIcon: Icons.download_outlined,
      );
}
