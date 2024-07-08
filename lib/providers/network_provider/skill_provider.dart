import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/models/website_build_with.dart';
import 'package:portfolio/services/firebase_services.dart';

final skillFutureProvider = FutureProvider<List<Skill>>((ref) async {
  return await FirebaseServices.getSkills();
});

final websiteBuiltWithFutureProvider =
    FutureProvider<List<WebsiteBuildWith>>((ref) async {
  return await FirebaseServices.getWebsiteBuildWith();
});
