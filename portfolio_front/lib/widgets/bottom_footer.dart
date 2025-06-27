import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/helpers/Networking_links.dart';

class bottomFooter extends StatefulWidget {
  const bottomFooter({super.key});

  @override
  State<bottomFooter> createState() => _bottomFooterState();
}

class _bottomFooterState extends State<bottomFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF0F0F0F), // very dark grey
            Color(0xFF1E1E1E), // slightly lighter
          ],
        ),
        border: Border(top: BorderSide(color: Color(0xFFD4AF37))),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Made with Tears Coming Out of My Head 🥲",
              textAlign: TextAlign.start,
              style: GoogleFonts.poiretOne(
                textStyle: TextStyle(
                  color: Color(0xFF7CFFCB),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NetworkingLinks(context: context),
                Text(
                  "© 2025 Shivaay Bajoria. All rights reserved.",
                  style: GoogleFonts.poiretOne(
                    textStyle: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
