import 'package:url_launcher/url_launcher.dart';

void resumeLaunching() {
  final Uri resumeUri = Uri.parse(
    'https://portfolio-flutter-26aac.web.app/assets/CV_Shivaay.pdf',
  );

  launchUrl(resumeUri, webOnlyWindowName: '_blank');
}
