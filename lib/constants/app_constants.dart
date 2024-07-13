import 'package:portfolio/constants/asserts_constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/models/website_build_with.dart';

class AppConstants {
  static const String appName = "Vijay Balaji's Portfolio";
}

class ThemeName {
  static const String light = "Light";
  static const String dark = "Dark";
}

class AppTitles {
  static const String home = "Home";
  static const String about = "About";
  static const String skills = "Skills";
  static const String work = "Work";
  static const String contact = "Contact";
}

class SocialContact {
  static const String instagram = "Instagram";
  static const String whatsapp = "Whatsapp";
  static const String telegram = "Telegram";
  static const String mail = "Mail";
  static const String linkedIn = "LinkedIn";
}

class HomeConstants {
  static const String userName = "VIJAY BALAJI";
  static const String heyThere = "Hey there,";
  static const String welcomeHeader = "It's Vijay Balaji.";
  static const String welcomeNote =
      "Welcome to my creative corner ! i'm Vijay Balaji, \na passionate Cross platform application developer with three years of experience\ncreating digital experiences that are both\nvisually stunning and user-friendly.";
  static const String resume = "Download CV";
  static const String sayHello = "Say Hello";
}

class TechSkill {
  static const String dart = "Dart";
  static const String python = "Python";

  static const String html = "HTML";
  static const String css = "CSS";
  static const String typescript = "TypeScript";

  static const String flutter = "Flutter";
  static const String angular = "Angular";

  static const String firebase = "Firebase";
  static const String postgres = "Postgres SQL";
  static const String supabase = "Supabase";

  static const String figma = "Figma";
  static const String canva = "Canva";

  static const String git = "Git";
  static const String postman = "Postman";
}

class ContactConstants {
  static const mailId = 'nvbalaji6@gmail.com';
  static const linedInProfile =
      'https://www.linkedin.com/in/vijay-balaji-b98a69218/';
  static String telegramURL = "https://t.me/nvbalaji6";
  static String whatsappURL = "whatsapp://send?phone=+918248419066";
  static String gitHubURL = "https://github.com/VijayBalaji6";
}

class WebsiteBuiltWith {
  static const String websiteBuildWith = "Website Build With";
  static const String flutter = "Flutter";
  static const String firebase = "Firebase";
  static const String githubActions = "Github Actions";
  static const String figma = "Figma";
}

// List items

final List<Project> projects = [
  Project(projectName: 'Todo book', projectDescription: ''),
  Project(projectName: 'Weather Buddy', projectDescription: ''),
  Project(projectName: 'Tetrix', projectDescription: ''),
  Project(projectName: 'SSK Admin', projectDescription: ''),
  Project(projectName: 'SSK Buddy', projectDescription: ''),
  Project(projectName: 'SSK', projectDescription: ''),
  Project(projectName: 'Smart Home Automation', projectDescription: ''),
];

final List<Skill> skills = [
  Skill(skillName: TechSkill.dart, skillAssert: SkillAssets.dartImage),
  Skill(skillName: TechSkill.python, skillAssert: SkillAssets.pythonImage),
  Skill(skillName: TechSkill.flutter, skillAssert: SkillAssets.flutterImage),
  Skill(skillName: TechSkill.angular, skillAssert: SkillAssets.angularImage),
  Skill(skillName: TechSkill.html, skillAssert: SkillAssets.htmlImage),
  Skill(skillName: TechSkill.css, skillAssert: SkillAssets.cssImage),
  Skill(skillName: TechSkill.typescript, skillAssert: SkillAssets.typeImage),
  Skill(skillName: TechSkill.firebase, skillAssert: SkillAssets.firebaseImage),
  Skill(skillName: TechSkill.postgres, skillAssert: SkillAssets.postgresImage),
  Skill(skillName: TechSkill.supabase, skillAssert: SkillAssets.supabaseImage),
  Skill(skillName: TechSkill.postman, skillAssert: SkillAssets.postmanImage),
  Skill(skillName: TechSkill.git, skillAssert: SkillAssets.gitImage),
  Skill(skillName: TechSkill.canva, skillAssert: SkillAssets.canvaImage),
  Skill(skillName: TechSkill.figma, skillAssert: SkillAssets.figmaImage),
];

final List<WebsiteBuildWith> websiteBuildWith = [
  WebsiteBuildWith(
      techName: WebsiteBuiltWith.flutter,
      techAssert: WebsiteBuildWithAssets.flutterImage),
  WebsiteBuildWith(
      techName: WebsiteBuiltWith.firebase,
      techAssert: WebsiteBuildWithAssets.firebaseImage),
  WebsiteBuildWith(
      techName: WebsiteBuiltWith.githubActions,
      techAssert: WebsiteBuildWithAssets.gitHubImage),
  WebsiteBuildWith(
      techName: WebsiteBuiltWith.figma,
      techAssert: WebsiteBuildWithAssets.figmaImage),
];
