import 'package:portfolio/models/projects.dart';

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
  static const String websiteBuildWith = "Website Build With";
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

class ContactConstants {
  static const mailId = 'nvbalaji6@gmail.com';
  static const linedInProfile =
      'https://www.linkedin.com/in/vijay-balaji-b98a69218/';
  static String telegramURL = "https://t.me/nvbalaji6";
  static String whatsappURL = "whatsapp://send?phone=+918248419066";
  static String gitHubURL = "https://github.com/VijayBalaji6";
}

final List<Project> projects = [
  Project(projectName: 'Todo book', projectDescription: ''),
  Project(projectName: 'Weather Buddy', projectDescription: ''),
  Project(projectName: 'Tetrix', projectDescription: ''),
  Project(projectName: 'SSK Admin', projectDescription: ''),
  Project(projectName: 'SSK Buddy', projectDescription: ''),
  Project(projectName: 'SSK', projectDescription: ''),
  Project(projectName: 'Smart Home Automation', projectDescription: ''),
];
