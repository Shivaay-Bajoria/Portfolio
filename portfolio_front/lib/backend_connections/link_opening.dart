import 'package:url_launcher/url_launcher.dart';

void LinkedinLaunching() {
  final Uri linkedinUrl = Uri.parse(
    "https://www.linkedin.com/in/shivaaybajoria/",
  );

  launchUrl(linkedinUrl, webOnlyWindowName: "_blank");
}

void GithubLaunching() {
  final Uri githubUrl = Uri.parse("https://github.com/Shivaay-Bajoria");

  launchUrl(githubUrl, webOnlyWindowName: "_blank");
}

void InstagramLaunching() {
  final Uri instaUrl = Uri.parse("https://www.instagram.com/shivaay__bajoria/");

  launchUrl(instaUrl, webOnlyWindowName: "_blank");
}
