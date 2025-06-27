import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/backend_connections/sendEmailContents.dart';
import 'package:portfolio_shivaay/helpers/controllers.dart';

final _formKey = GlobalKey<FormState>();

class ContactForm extends StatefulWidget {
  double wt, ht;

  ContactForm({super.key, required this.wt, required this.ht});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: widget.ht,
      width: widget.wt,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFC08457)),
        color: Color.fromRGBO(212, 175, 55, 0.05),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.email_rounded),
                  hintText: "Enter the Email you want to send the email",
                  labelText: "Email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(270),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                controller: emailEditingController,
                validator: (String? value) {
                  return (value == null
                      ? "Email cannot be empty"
                      : !EmailValidator.validate(value)
                      ? "Enter a Valid Email"
                      : null);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Your Name",
                  icon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(270),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                controller: nameEditingController,
                validator: (String? value) {
                  return (value == null) ? "Value cannot be empty" : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Message",
                  hintText: "Enter you message",
                  icon: Icon(Icons.message),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(270),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                controller: messageEditingController,
                validator: (String? value) {
                  return (value == null) ? "Message cannot be empty" : null;
                },
              ),
            ),
            SizedBox(height: height * 0.03),
            ElevatedButton(
              onPressed: () {
                final email = emailEditingController.text;
                final name = nameEditingController.text;
                final message = messageEditingController.text;

                sendEmail(context, email, name, message);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.black12),
              ),
              child: Text(
                "Send 📩",
                style: GoogleFonts.poiretOne(
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
