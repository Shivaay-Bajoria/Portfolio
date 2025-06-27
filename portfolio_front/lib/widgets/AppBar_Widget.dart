import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/helpers/TextStyleHelp.dart';
import 'package:portfolio_shivaay/helpers/keys.dart';
import 'package:portfolio_shivaay/helpers/navbarItem.dart';
import 'package:get/get.dart';
import 'package:portfolio_shivaay/helpers/scroll_function.dart';
import 'package:portfolio_shivaay/screens/contact_page.dart';

class AppbarWidget extends StatelessWidget implements PreferredSize {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      //leading: Image(image: AssetImage("assets/logo/logo_dark.png")),
      title: Text(
        "S.B.",
        style: GoogleFonts.newsreader(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        navBarItem(title: "Home", ontap: () => scroll_function(homeKey)),
        SizedBox(width: MediaQuery.of(context).size.width * 0.015),
        navBarItem(title: "About Me", ontap: () => scroll_function(abouKey)),
        SizedBox(width: MediaQuery.of(context).size.width * 0.015),
        navBarItem(
          title: "Projects",
          ontap: () => scroll_function(projectsKey),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.015),
        navBarItem(title: "Contact Me", ontap: () => Get.to(ContactPage())),
        SizedBox(width: MediaQuery.of(context).size.width * 0.015),
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF000000), Color(0xFF1E1E1E), Color(0xFFD4AF37)],

            begin: Alignment.topLeft,
          ),
          boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 20)],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}
