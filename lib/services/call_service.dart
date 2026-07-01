import 'package:url_launcher/url_launcher.dart';

class CallService {
  static Future<void> call(String number) async {
    final Uri uri = Uri(
      scheme: 'tel',
      path: number,
    );

    await launchUrl(uri);
  }
}