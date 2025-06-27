import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/backend_connections/link_opening.dart';
import 'package:portfolio_shivaay/helpers/Networking_links.dart';

import 'TextStyleHelp.dart';

//Web Text Content
class aboutTextContentWeb extends StatelessWidget {
  const aboutTextContentWeb({super.key});

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Let me tell you a little about myself........",
            textAlign: TextAlign.start,
            style: GoogleFonts.poiretOne(textStyle: TextStyleHelp.aboutMeText),
          ),

          SizedBox(height: ht * 0.03),

          Text(
            softWrap: true,
            "I’m Shivaay Bajoria, a driven Full-Stack Developer "
            "and Data Analyst currently pursuing a B.Tech in "
            "Computer Science. I enjoy building thoughtful, "
            "scalable solutions using Flutter and uncovering "
            "meaningful insights from data through Python and SQL.",
            textAlign: TextAlign.justify,
            style: GoogleFonts.poiretOne(textStyle: TextStyleHelp.aboutMeText),
          ),

          SizedBox(height: ht * 0.02),

          Text(
            softWrap: true,
            "Presently, I’m interning as a Business Analyst at RSWM Ltd (LNJ Bhilwara Group),"
            " where I design data dashboards in Excel to support operational efficiency "
            "across multiple plants. I also serve as a core technical member of the Cherry+ "
            "Network Club, contributing to the development of a campus-wide "
            "Flutter-based application.",
            style: GoogleFonts.poiretOne(textStyle: TextStyleHelp.aboutMeText),
          ),

          SizedBox(height: ht * 0.02),

          Text(
            softWrap: true,
            "With a curious mindset and a strong attention to detail, I aim to bridge "
            "the worlds of software engineering and data analytics. I’m always "
            "open to new challenges, collaborative projects, and opportunities "
            "to grow as a thoughtful, impact-driven problem solver.",
            style: GoogleFonts.poiretOne(textStyle: TextStyleHelp.aboutMeText),
          ),
        ],
      ),
    );
  }
}

//Mobile Text Content
class aboutTextContentMobile extends StatefulWidget {
  aboutTextContentMobile({super.key});

  @override
  State<aboutTextContentMobile> createState() => _aboutTextContentMobileState();
}

class _aboutTextContentMobileState extends State<aboutTextContentMobile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Let me tell you a little about myself........",
            style: GoogleFonts.poiretOne(textStyle: TextStyleHelp.aboutMeText),
          ),

          SizedBox(height: ht * 0.03),

          Column(
            children: [
              Text(
                softWrap: true,
                "I’m Shivaay Bajoria, a driven Full-Stack Developer "
                "and Data Analyst currently pursuing a B.Tech in "
                "Computer Science. I enjoy building thoughtful, "
                "scalable solutions using Flutter and uncovering "
                "meaningful insights from data through Python and SQL.",
                style: GoogleFonts.poiretOne(
                  textStyle: TextStyleHelp.aboutMeText,
                ),
              ),
              SizedBox(height: ht * 0.02),
              if (isExpanded)
                Column(
                  children: [
                    Text(
                      softWrap: true,
                      "Presently, I’m interning as a Business Analyst at RSWM Ltd (LNJ Bhilwara Group),"
                      " where I design data dashboards in Excel to support operational efficiency "
                      "across multiple plants. I also serve as a core technical member of the Cherry+ "
                      "Network Club, contributing to the development of a campus-wide "
                      "Flutter-based application.",
                      style: GoogleFonts.poiretOne(
                        textStyle: TextStyleHelp.aboutMeText,
                      ),
                    ),

                    SizedBox(height: ht * 0.02),

                    Text(
                      softWrap: true,
                      "With a curious mindset and a strong attention to detail, I aim to bridge "
                      "the worlds of software engineering and data analytics. I’m always "
                      "open to new challenges, collaborative projects, and opportunities "
                      "to grow as a thoughtful, impact-driven problem solver.",
                      style: GoogleFonts.poiretOne(
                        textStyle: TextStyleHelp.aboutMeText,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: ht * 0.020),
              InkWell(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Container(
                  transform: Matrix4.identity()..scale(isExpanded ? 0.95 : 1),
                  child: Text(
                    !isExpanded ? "Show More" : "Show Less",
                    style: GoogleFonts.poiretOne(
                      textStyle: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFD4AF37),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}

//Web Tech Stack Content
class aboutTechStack extends StatelessWidget {
  const aboutTechStack({super.key});

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Wrap(
        spacing: 15,
        runSpacing: 4,

        children: [
          Chip(
            label: Text(
              "Python",
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            avatar: SvgPicture.asset(
              "assets/tech_stack/python.svg",
              height: 40,
            ),
            backgroundColor: Color.fromRGBO(28, 28, 30, 0.85),
            side: BorderSide(color: Colors.transparent),
          ),
          Chip(
            label: Text(
              "Flutter",
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            avatar: SvgPicture.asset(
              "assets/tech_stack/flutter.svg",
              height: 40,
            ),
            backgroundColor: Color.fromRGBO(28, 28, 30, 0.85),
            side: BorderSide(color: Colors.transparent),
          ),
          Chip(
            label: Text(
              "Node.js",
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            avatar: SvgPicture.asset(
              "assets/tech_stack/nodedotjs.svg",
              height: 40,
            ),
            backgroundColor: Color.fromRGBO(28, 28, 30, 0.85),
            side: BorderSide(color: Colors.transparent),
          ),
          Chip(
            label: Text(
              "Mongo DB",
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            avatar: SvgPicture.asset(
              "assets/tech_stack/mongodb.svg",
              height: 40,
            ),
            backgroundColor: Color.fromRGBO(28, 28, 30, 0.85),
            side: BorderSide(color: Colors.transparent),
          ),
          Chip(
            label: Text(
              "Git",
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            avatar: SvgPicture.asset("assets/tech_stack/git.svg", height: 40),
            backgroundColor: Color.fromRGBO(28, 28, 30, 0.85),
            side: BorderSide(color: Colors.transparent),
          ),
          Chip(
            label: Text(
              "Tensor Flow | Machine Learning",
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            avatar: SvgPicture.asset(
              "assets/tech_stack/tensorflow.svg",
              height: 40,
            ),
            backgroundColor: Color.fromRGBO(28, 28, 30, 0.85),
            side: BorderSide(color: Colors.transparent),
          ),
        ],
      ),
    );
  }
}

class aboutLinks extends StatelessWidget {
  const aboutLinks({super.key});

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Click. Stalk. Collaborate.",
            style: GoogleFonts.poiretOne(textStyle: TextStyleHelp.aboutMeText),
          ),
          SizedBox(height: ht * 0.03),
          NetworkingLinks(context: context),
        ],
      ),
    );
  }
}

class aboutPersonal extends StatelessWidget {
  const aboutPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Thanks for scrolling! You deserve a cookie 🍪",
      style: GoogleFonts.poiretOne(
        textStyle: TextStyle(color: Color(0xFFD4AF37), fontSize: 22),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
