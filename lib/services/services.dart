import 'package:url_launcher/url_launcher.dart';

class Services {
  static Future<void> sendEmail() async {
    try {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'nvbalaji6@gmail.com',
        queryParameters: {'subject': 'Hello vijay'},
      );
      await launchUrl(emailUri);
    } catch (e) {
      throw 'Could not launch email app';
    }
  }
}
