// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:portfolio/helper/extention.dart';

class WebsiteBuildWithWidget extends StatelessWidget {
  const WebsiteBuildWithWidget({
    super.key,
    required this.techName,
  });

  final String techName;

  Future<String> loadImage() async {
    try {
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('website_build_with')
          .child('$techName.svg');
      var url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadImage(),
        initialData: "loading",
        builder: (BuildContext context, AsyncSnapshot<String> snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapShot.hasError) {
            return Center(
                child: Text('Error fetching image: ${snapShot.error}'));
          } else if (snapShot.hasData && snapShot.data!.isNotEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ImageNetwork(
                  onLoading: const SizedBox(),
                  image: snapShot.data.toString(),
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  techName.toCapitalized(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            );
          } else {
            return const Center(child: Text('No image found'));
          }
        });
  }
}
