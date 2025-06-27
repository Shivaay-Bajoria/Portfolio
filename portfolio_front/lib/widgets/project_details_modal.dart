import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/helpers/TextStyleHelp.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helpers/projects.dart';

class ProjectDetailsModal extends StatelessWidget {
  final Projects project;
  BuildContext context;

  ProjectDetailsModal({
    super.key,
    required this.project,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;
        return Dialog(
          child: Container(
            height: !isMobile
                ? MediaQuery.of(context).size.height * 0.4
                : MediaQuery.of(context).size.height * 0.65,
            width: !isMobile
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              color: Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Text(
                    project.title,
                    style: GoogleFonts.poiretOne(
                      textStyle: TextStyleHelp.projectTextCard,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    project.long_description,
                    style: GoogleFonts.poiretOne(
                      textStyle: TextStyleHelp.projectTextCard,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Tech Stack: ${project.techStack.join(', ')}",
                    style: GoogleFonts.poiretOne(
                      textStyle: TextStyleHelp.projectTextCard,
                    ),
                  ),
                  SizedBox(height: 15),
                  !isMobile
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/tech_stack/github.svg',
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                  Uri.parse(project.githubUrl),
                                  webOnlyWindowName: "_blank",
                                );
                              },
                              child: Text(
                                project.githubUrl,
                                style: GoogleFonts.poiretOne(
                                  textStyle: TextStyleHelp.projectTextCard,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/tech_stack/github.svg',
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                  Uri.parse(project.githubUrl),
                                  webOnlyWindowName: "_blank",
                                );
                              },
                              child: Text(
                                project.githubUrl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poiretOne(
                                  textStyle: TextStyleHelp.projectTextCard,
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
