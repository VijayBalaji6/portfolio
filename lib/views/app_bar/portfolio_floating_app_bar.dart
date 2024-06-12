import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.03.sh),
      child: const ResponsiveLayout(
        desktop: AppBarDesktopView(),
        mobile: AppBarMobileView(),
      ),
    );
  }
}
