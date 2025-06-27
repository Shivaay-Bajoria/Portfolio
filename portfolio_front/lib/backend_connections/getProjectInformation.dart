import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:portfolio_shivaay/helpers/projects.dart';

Future<List<Projects>> fetchProjects() async {
  final response = await http.get(
    Uri.parse("https://portfolioback-production-c381.up.railway.app/projects"),
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Projects.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load projects');
  }
}
