// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/themes/app_colors.dart';

class TechSkillWidget extends StatelessWidget {
  const TechSkillWidget({
    super.key,
    required this.skillAssetName,
    required this.skillName,
  });
  final String skillAssetName;
  final String skillName;

  Future<String> loadImage() async {
    Reference ref =
        FirebaseStorage.instance.ref().child('skills').child('flutter.svg');
    var url = await ref.getDownloadURL();
    return url;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadImage(),
        builder: (BuildContext context, AsyncSnapshot<String> snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapShot.hasError) {
            return Center(
                child: Text('Error fetching image: ${snapShot.error}'));
          } else if (snapShot.hasData && snapShot.data!.isNotEmpty) {
            print("URL ${snapShot.data}");
            return CircleAvatar(
              backgroundColor: AppColors.lightGrey,
              radius: 75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.network(
                    snapShot.data.toString(),
                    placeholderBuilder: (BuildContext context) =>
                        const CircularProgressIndicator(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    skillName,
                    style:
                        const TextStyle(fontSize: 18, color: AppColors.white),
                  )
                ],
              ),
            );
          } else {
            return const Center(child: Text('No image found'));
          }
        });
  }
}
