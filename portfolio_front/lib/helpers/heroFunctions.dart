import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/backend_connections/resume_downloading.dart';
import 'package:shimmer/shimmer.dart';

//HeroImage
class HeroImage extends StatelessWidget {
  double height, width;

  HeroImage({super.key, required this.width, required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(270),
        boxShadow: [BoxShadow(color: Colors.white)],
      ),
      padding: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(270),
        child: Image(
          image: AssetImage("assets/mine/shivaay.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

//HeroLogo
class HeroLogo extends StatelessWidget {
  double height, width;

  HeroLogo({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(
          image: AssetImage("assets/logo/logo_dark.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

//HeroText Section
class HeroText extends StatefulWidget {
  double width, height;
  HeroText({super.key, required this.height, required this.width});

  @override
  State<HeroText> createState() => _HeroTextState();
}

class _HeroTextState extends State<HeroText> {
  bool isPressedResume = false;
  bool isPressedProjects = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: widget.height * 0.15),
            Text(
              "Hello, I am Shivaay 👋",
              textAlign: TextAlign.center,
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Text(
              "Full Stack Developer 🚀 | Data Anaylst 🖥️",
              textAlign: TextAlign.center,
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Text(
              "On a mission to solve real-world problems with code and insights.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              "Whether it’s building scalable apps or uncovering trends, I love making data work smart.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 20),
            //Adding the Buttons for Resume
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Want to know more?",
                  style: GoogleFonts.poiretOne(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Check my ",
                      style: GoogleFonts.poiretOne(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        resumeLaunching();
                      },
                      onTapUp: (_) {
                        setState(() {
                          isPressedResume = false;
                        });
                      },
                      onTapDown: (_) {
                        setState(() {
                          isPressedResume = true;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 250),
                        transform: Matrix4.identity()
                          ..scale(isPressedResume ? 0.93 : 1),
                        child: Text(
                          "Resume ",
                          style: GoogleFonts.poiretOne(
                            textStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              color: Color(0xFFD4AF37),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 15),
            //Adding the button to go to projects
            Column(
              children: [
                Text(
                  "Deployed dreams. Debugged realities.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poiretOne(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View My ",
                      style: GoogleFonts.poiretOne(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      onTapDown: (_) {
                        setState(() {
                          isPressedProjects = true;
                        });
                      },
                      onTapUp: (_) {
                        setState(() {
                          isPressedProjects = true;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 250),
                        transform: Matrix4.identity()
                          ..scale(isPressedProjects ? 0.95 : 1),
                        child: Text(
                          "Projects",
                          style: GoogleFonts.poiretOne(
                            textStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              color: Color(0xFFD4AF37),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
