import 'package:firebase_storage/firebase_storage.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart';

class Services {
  static Future<void> sendEmail() async {
    try {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: ContactConstants.mailId,
        queryParameters: {'subject': 'Hello vijay'},
      );
      await launchUrl(emailUri);
    } catch (e) {
      throw 'Could not launch email app';
    }
  }

  static Future<void> openLinkedIn() async {
    try {
      await launchUrl(Uri.parse(ContactConstants.linedInProfile));
    } catch (e) {
      throw 'Could not launch Linked In';
    }
  }

  static Future<void> openTelegramApp() async {
    try {
      await launchUrl(Uri.parse(ContactConstants.telegramURL),
          mode: LaunchMode.externalApplication);
    } catch (e) {
      throw 'Could not launch Telegram';
    }
  }

  static Future<void> openWhatsApp() async {
    try {
      await launchUrl(Uri.parse(ContactConstants.whatsappURL),
          mode: LaunchMode.externalApplication);
    } catch (e) {
      throw 'Could not launch Linked';
    }
  }

  static Future<void> openGitHub() async {
    try {
      await launchUrl(Uri.parse(ContactConstants.gitHubURL),
          mode: LaunchMode.externalApplication);
    } catch (e) {
      throw 'Could not launch Linked';
    }
  }

  static Future<void> downloadFile() async {
    try {
      String downloadURL = await FirebaseStorage.instance
          .ref()
          .child('resume/VIJAY BALAJI N - RESUME.pdf')
          .getDownloadURL();
      HTMLAnchorElement()
        ..setAttribute('target', '_blank')
        ..setAttribute('download', 'vijay_balaji_resume')
        ..href = downloadURL
        ..download = downloadURL
        ..click();
    } catch (e) {
      rethrow;
    }
  }
}
