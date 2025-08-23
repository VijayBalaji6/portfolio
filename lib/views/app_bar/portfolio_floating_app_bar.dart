import 'package:flutter/material.dart';

import 'package:portfolio/responsive/responsive_layout.dart';
import 'package:portfolio/views/app_bar/app_bar_desktop_view.dart';
import 'package:portfolio/views/app_bar/app_bar_mobile_view.dart';

class PortFolioFloatingAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PortFolioFloatingAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: const ResponsiveLayout(
        desktop: AppBarDesktopView(),
        mobile: AppBarMobileView(),
      ),
    );
  }
}
