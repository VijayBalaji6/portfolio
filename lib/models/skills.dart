import 'dart:convert';

class Skill {
  String skillName;
  String skillImg;
  int position;
  Skill({
    required this.skillName,
    required this.skillImg,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skillName': skillName,
      'skillImg': skillImg,
      'position': position,
    };
  }

  factory Skill.fromMap(Map<String, dynamic> map) {
    return Skill(
      skillName: map['skillName'] as String,
      skillImg: map['skillImg'] as String,
      position: map['position'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Skill.fromJson(String source) =>
      Skill.fromMap(json.decode(source) as Map<String, dynamic>);
}
