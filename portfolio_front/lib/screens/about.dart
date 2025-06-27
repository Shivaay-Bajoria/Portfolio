import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/helpers/TextStyleHelp.dart';
import 'package:portfolio_shivaay/helpers/aboutFunctions.dart';

class AboutMeCard extends StatefulWidget {
  const AboutMeCard({super.key});

  @override
  State<AboutMeCard> createState() => _AboutMeCardState();
}

class _AboutMeCardState extends State<AboutMeCard> {
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800;

        return !isMobile
            ? Container(
                height: ht * 0.7,
                width: wt * 0.7,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1B1B1B)],
                  ),
                  border: Border.all(color: Color(0xFFD4AF37)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFD4AF37)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                            child: Text(
                              "About Me",
                              style: GoogleFonts.poiretOne(
                                textStyle: TextStyle(
                                  color: Color(0xFFC08457),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: ht * 0.03),
                        aboutTextContentWeb(),
                        SizedBox(height: ht * 0.03),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Tech Stack",
                            style: GoogleFonts.poiretOne(
                              textStyle: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFFC08457),
                                color: Color(0xFFC08457),
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: ht * 0.015),
                        aboutTechStack(),
                        SizedBox(height: ht * 0.03),
                        aboutLinks(),
                        SizedBox(height: ht * 0.03),
                        aboutPersonal(),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                height: ht * 1,
                width: wt * 0.85,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1B1B1B)],
                  ),
                  border: Border.all(color: Color(0xFFD4AF37)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFD4AF37)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                            child: Text(
                              "About Me",
                              style: GoogleFonts.poiretOne(
                                textStyle: TextStyle(
                                  color: Color(0xFFC08457),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: ht * 0.03),
                        aboutTextContentMobile(),
                        SizedBox(height: ht * 0.03),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Tech Stack",
                            style: GoogleFonts.poiretOne(
                              textStyle: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFFC08457),
                                color: Color(0xFFC08457),
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: ht * 0.015),
                        aboutTechStack(),
                        SizedBox(height: ht * 0.03),
                        aboutLinks(),
                        SizedBox(height: ht * 0.03),
                        aboutPersonal(),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
