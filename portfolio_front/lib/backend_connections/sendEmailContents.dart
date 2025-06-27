import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_shivaay/helpers/controllers.dart';
import 'dart:convert';

Future<void> sendEmail(
  BuildContext context,
  String email,
  String name,
  String message,
) async {
  const String url =
      "https://portfolioback-production-c381.up.railway.app/contact";

  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: json.encode({"email": email, "name": name, "message": message}),
  );

  if (response.statusCode == 200) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Message sent successfully!')));
  } else {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Eroorr")));
  }
}
