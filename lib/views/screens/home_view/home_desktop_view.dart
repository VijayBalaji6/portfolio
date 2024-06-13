import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/styles/app_styles.dart';
import 'package:portfolio/themes/app_colors.dart';
import 'package:portfolio/views/screens/home_view/widgets/social_contact.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildSocialContact(),
        SizedBox(
          height: 0.05.sh,
        ),
        buildWelcomeNote(),
        SizedBox(
          height: 0.03.sh,
        ),
        Row(
          children: [
            buildHomeWelcomeButtons(
              tapAction: () {},
              buttonName: HomeConstants.sayHello,
              buttonIcon: Icons.arrow_circle_right_outlined,
            ),
            SizedBox(
              width: 0.01.sw,
            ),
            buildHomeWelcomeButtons(
              tapAction: () {},
              buttonName: HomeConstants.resume,
              buttonIcon: Icons.download_outlined,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildSocialContact() {
    return Row(
      children: [
        const HomeSocialContactButton(
          assetIcon: SocialIconAssets.mailImage,
        ),
        SizedBox(
          width: 0.01.sw,
        ),
        const HomeSocialContactButton(
          assetIcon: SocialIconAssets.linkedInImage,
        ),
      ],
    );
  }

  Widget buildWelcomeNote() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        SizedBox(
          height: 0.03.sh,
        ),
        Text(
          HomeConstants.welcomeHeader,
          style: AppStyles.titleLarge,
        ),
        SizedBox(
          height: 0.03.sh,
        ),
        Text(
          HomeConstants.welcomeNote,
          style: AppStyles.bodyMedium.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }

  ElevatedButton buildHomeWelcomeButtons(
      {required void Function()? tapAction,
      required String buttonName,
      required IconData buttonIcon}) {
    return ElevatedButton(
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: AppStyles.resumeButtonStyle,
            ),
            SizedBox(
              width: .01.sw,
            ),
            Icon(
              buttonIcon,
              size: 7.sp,
            )
          ],
        ),
      ),
    );
  }
}
