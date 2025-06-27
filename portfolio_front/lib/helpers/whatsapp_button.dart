import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/backend_connections/contactWhatsapp.dart';

class WhatsappButton extends StatefulWidget {
  double ht, wt;
  WhatsappButton({super.key, required this.wt, required this.ht});

  @override
  State<WhatsappButton> createState() => _WhatsappButtonState();
}

class _WhatsappButtonState extends State<WhatsappButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        WhatsappLauncher();
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFF25D366)),
      ),

      child: Container(
        height: widget.ht,
        width: widget.wt,
        child: Center(
          child: Text(
            "Connect with me",
            textAlign: TextAlign.center,
            style: GoogleFonts.poiretOne(
              textStyle: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
