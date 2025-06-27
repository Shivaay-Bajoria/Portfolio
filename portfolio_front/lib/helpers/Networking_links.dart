import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../backend_connections/link_opening.dart';

class NetworkingLinks extends StatelessWidget {
  BuildContext context;

  NetworkingLinks({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InkWell(
          onTap: () {
            LinkedinLaunching();
          },
          child: SvgPicture.asset(
            "assets/tech_stack/linkedin.svg",
            color: Colors.white,
          ),
        ),
        SizedBox(width: wt * 0.05),
        InkWell(
          onTap: () {
            GithubLaunching();
          },
          child: SvgPicture.asset(
            "assets/tech_stack/github.svg",
            color: Colors.white,
          ),
        ),
        SizedBox(width: wt * 0.05),
        InkWell(
          onTap: () {
            InstagramLaunching();
          },
          child: SvgPicture.asset(
            "assets/tech_stack/instagram.svg",
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
