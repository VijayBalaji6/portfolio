import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/models/website_build_with.dart';

class FirebaseServices {
  static final collection =
      FirebaseFirestore.instance.collection('vijay-balaji-portfolio');

  static Future<List<Skill>> getSkills() async {
    List<Skill> mySkills = [];
    try {
      DocumentSnapshot skillSnapShot = await collection.doc('skills').get();
      Map<String, dynamic> skills =
          skillSnapShot.data() as Map<String, dynamic>;
      skills.forEach((key, value) {
        mySkills.add(
            Skill(skillName: value['skill_name'], position: value['position']));
      });
      return mySkills;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<WebsiteBuildWith>> getWebsiteBuildWith() async {
    List<WebsiteBuildWith> websiteBuildWithList = [];
    try {
      DocumentSnapshot websiteBuildWithSnapShot =
          await collection.doc('website_build_with').get();
      Map<String, dynamic> websiteBuildWith =
          websiteBuildWithSnapShot.data() as Map<String, dynamic>;
      websiteBuildWith.forEach((key, value) {
        websiteBuildWithList.add(WebsiteBuildWith(
            techName: value['tech_name'], position: value['position']));
      });
      return websiteBuildWithList;
    } catch (e) {
      rethrow;
    }
  }
}
