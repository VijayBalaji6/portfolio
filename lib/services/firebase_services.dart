import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:portfolio/models/skills.dart';

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
}
