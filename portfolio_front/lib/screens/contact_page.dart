import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/helpers/whatsapp_button.dart';
import 'package:portfolio_shivaay/widgets/Contact_Form.dart';
import 'package:shimmer/shimmer.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            bool isMobile = constraints.maxWidth < 600;
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF0A0F1D), // Midnight Blue
                        Color(0xFF1E1E1E), // Charcoal Gray
                      ],
                    ),
                  ),
                ),

                //Shimmer Effect
                Shimmer.fromColors(
                  baseColor: Colors.transparent,
                  highlightColor: Color(
                    0x33D4AF37,
                  ), // Golden highlight with opacity
                  direction: ShimmerDirection.ltr,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors
                        .white, // This is required but overridden by shimmer
                  ),
                ),

                Center(
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: !isMobile
                        ? Container(
                            width: wt * 0.6,
                            height: ht * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              border: Border.all(color: Color(0xFFC08457)),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF000000), // Pure Black
                                  Color(0xFF1E1E1E), // Charcoal Grey
                                  Color.fromRGBO(
                                    212,
                                    175,
                                    55,
                                    0.1,
                                  ), // Gold with 20% opacity
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: ht * 0.05),
                                Text(
                                  "Let’s Get in Touch",
                                  style: GoogleFonts.poiretOne(
                                    textStyle: TextStyle(
                                      color: Color(0xFFC08457),
                                      fontSize: 25,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xFFC08457),
                                    ),
                                  ),
                                ),
                                SizedBox(height: ht * 0.05),
                                Text(
                                  "I'm always open to new ideas, projects, and collaborations.",
                                  style: GoogleFonts.poiretOne(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                SizedBox(height: ht * 0.05),
                                ContactForm(ht: ht * 0.35, wt: wt * 0.3),
                                SizedBox(height: ht * 0.05),
                                Text(
                                  "Or Contact me on Whatsapp",
                                  style: GoogleFonts.poiretOne(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: ht * 0.05),
                                WhatsappButton(ht: ht * 0.1, wt: wt * 0.1),
                              ],
                            ),
                          )
                        : SingleChildScrollView(
                            child: Container(
                              width: wt * 0.8,
                              height: ht * 1.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                border: Border.all(color: Color(0xFFC08457)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF000000), // Pure Black
                                    Color(0xFF1E1E1E), // Charcoal Grey
                                    Color.fromRGBO(
                                      212,
                                      175,
                                      55,
                                      0.1,
                                    ), // Gold with 20% opacity
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: ht * 0.05),
                                  Text(
                                    "Let’s Get in Touch",
                                    style: GoogleFonts.poiretOne(
                                      textStyle: TextStyle(
                                        color: Color(0xFFC08457),
                                        fontSize: 25,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xFFC08457),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: ht * 0.05),
                                  Text(
                                    "I'm always open to new ideas, projects, and collaborations.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poiretOne(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: ht * 0.05),
                                  ContactForm(ht: ht * 0.5, wt: wt * 0.6),
                                  SizedBox(height: ht * 0.05),
                                  Text(
                                    "Or Contact me on Whatsapp",
                                    style: GoogleFonts.poiretOne(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: ht * 0.03),
                                  WhatsappButton(ht: ht * 0.1, wt: wt * 0.25),
                                ],
                              ),
                            ),
                          ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
