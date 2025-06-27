import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TextStyleHelp.dart';

class navBarItem extends StatefulWidget {
  String title;
  final VoidCallback ontap;

  navBarItem({super.key, required this.title, required this.ontap});

  @override
  State<navBarItem> createState() => _navBarItemState();
}

class _navBarItemState extends State<navBarItem> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800;
        return InkWell(
          onTap: widget.ontap,
          onTapDown: (_) {
            setState(() {
              isPressed = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              isPressed = false;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 150),
            transform: Matrix4.identity()..scale(isPressed ? 0.93 : 1),
            curve: Curves.bounceIn,
            child: Text(
              widget.title,
              style: GoogleFonts.newsreader(
                textStyle: TextStyleHelp.navBarItems,
              ),
            ),
          ),
        );
      },
    );
  }
}
