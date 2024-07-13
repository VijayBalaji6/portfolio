import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/helper/extention.dart';
import 'package:portfolio/models/website_build_with.dart';

class WebsiteBuildWithWidget extends StatelessWidget {
  const WebsiteBuildWithWidget({
    super.key,
    required this.techDetail,
  });

  final WebsiteBuildWith techDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          techDetail.techAssert,
          semanticsLabel: techDetail.techName,
          height: 50,
          width: 50,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          techDetail.techName.toCapitalized(),
          style: const TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
