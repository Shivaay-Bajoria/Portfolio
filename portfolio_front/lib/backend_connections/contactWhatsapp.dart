import 'package:url_launcher/url_launcher.dart';

void WhatsappLauncher() {
  final Uri whatsappUri = Uri.parse(
    "https://wa.me/919910386750?text=Hi%20Shivaay%2C%20I%20found%20your%20portfolio%20and%20wanted%20to%20connect.",
  );

  launchUrl(whatsappUri, webOnlyWindowName: "_blank");
}
