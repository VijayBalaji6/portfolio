import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive_layout.dart';
import 'package:portfolio/views/screens/contacts_view/contact_desktop_view.dart';
import 'package:portfolio/views/screens/contacts_view/widgets/contact_mobile_view.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: ContactMobileView(), desktop: ContactDesktopView());
  }
}
