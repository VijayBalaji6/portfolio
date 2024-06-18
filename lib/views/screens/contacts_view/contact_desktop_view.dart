import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/views/screens/contacts_view/widgets/contact_view_widgets.dart';

class ContactDesktopView extends StatelessWidget {
  const ContactDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactViewWidgets.contactMe(),
        SizedBox(
          height: 0.03.sh,
        ),
        ContactViewWidgets.socialContactView(isMobileView: false),
      ],
    );
  }
}
