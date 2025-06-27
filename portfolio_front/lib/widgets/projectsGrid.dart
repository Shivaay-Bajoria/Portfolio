import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helpers/projectCard.dart';
import '../helpers/projects.dart';

class ProjectGrid extends StatefulWidget {
  final List<Projects> projects;

  ProjectGrid({super.key, required this.projects});

  @override
  State<ProjectGrid> createState() => _ProjectGridState();
}

class _ProjectGridState extends State<ProjectGrid> {
  bool showAll = false;
  int crossAxisCount = 0;
  @override
  Widget build(BuildContext context) {
    final cappedProjects = widget.projects.take(12).toList();
    final visibleProjects = showAll
        ? cappedProjects
        : cappedProjects.take(6).toList();
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (width < 600) {
      crossAxisCount = 1;
    } else if (width < 1000) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 3;
    }
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(12),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: visibleProjects.length,
          itemBuilder: (context, index) {
            final project = visibleProjects[index];
            return Projectcard(project: project);
          },
        ),
        SizedBox(height: heigth * 0.03),
        if (cappedProjects.length > 6)
          TextButton(
            onPressed: () => setState(() {
              showAll = !showAll;
            }),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.bounceIn,
              child: Text(
                showAll ? "Show Less" : "Show More",
                style: GoogleFonts.poiretOne(
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
