import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/backend_connections/getProjectInformation.dart';
import 'package:portfolio_shivaay/helpers/TextStyleHelp.dart';
import 'package:portfolio_shivaay/helpers/projects.dart';
import 'package:portfolio_shivaay/widgets/projectsGrid.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  late Future<List<Projects>> futureProjects;

  @override
  void initState() {
    super.initState();
    futureProjects = fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;
        return !isMobile
            ? Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1B1B1B)],
                  ),
                  border: Border.all(color: Color(0xFFD4AF37)),
                ),
                width: width * 0.7,
                height: height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFD4AF37)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                            child: Text(
                              "My Projects",
                              style: GoogleFonts.poiretOne(
                                textStyle: TextStyle(
                                  color: Color(0xFFC08457),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          "Each repo tells a story — dive in.",
                          style: GoogleFonts.poiretOne(
                            textStyle: TextStyleHelp.projectTextheading,
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        //Passing the Projects List Using Future Builder
                        FutureBuilder<List<Projects>>(
                          future: futureProjects,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Text("Error loading projects"),
                              );
                            } else if (!snapshot.hasData ||
                                snapshot.data!.isEmpty) {
                              return Center(
                                child: Text("No projects available"),
                              );
                            }

                            return ProjectGrid(projects: snapshot.data!);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1B1B1B)],
                  ),
                  border: Border.all(color: Color(0xFFD4AF37)),
                ),
                width: width * 0.9,
                height: height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFD4AF37)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 15,
                            ),
                            child: Text(
                              "My Projects",
                              style: GoogleFonts.poiretOne(
                                textStyle: TextStyle(
                                  color: Color(0xFFC08457),
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          "Each repo tells a story — dive in.",
                          style: GoogleFonts.poiretOne(
                            textStyle: TextStyleHelp.projectTextheading,
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        //Passing the Projects List Using Future Builder
                        FutureBuilder<List<Projects>>(
                          future: futureProjects,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Text("Error loading projects"),
                              );
                            } else if (!snapshot.hasData ||
                                snapshot.data!.isEmpty) {
                              return Center(
                                child: Text("No projects available"),
                              );
                            }
                            return ProjectGrid(projects: snapshot.data!);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
