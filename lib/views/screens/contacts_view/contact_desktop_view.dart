import 'package:flutter/material.dart';
import 'package:portfolio/views/screens/contacts_view/widgets/contact_view_widgets.dart';

class ContactDesktopView extends StatelessWidget {
  const ContactDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactViewWidgets.contactMe(),
        SizedBox(height: 30),
        ContactViewWidgets.socialContactView(isMobileView: false),
      ],
    );
  }
}
