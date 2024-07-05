import 'dart:convert';

class Skill {
  String skillName;
  int position;
  Skill({
    required this.skillName,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skillName': skillName,
      'position': position,
    };
  }

  factory Skill.fromMap(Map<String, dynamic> map) {
    return Skill(
      skillName: map['skillName'] as String,
      position: map['position'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Skill.fromJson(String source) =>
      Skill.fromMap(json.decode(source) as Map<String, dynamic>);
}
