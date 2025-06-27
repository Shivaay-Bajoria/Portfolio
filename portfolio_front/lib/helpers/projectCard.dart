import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/helpers/TextStyleHelp.dart';
import 'package:portfolio_shivaay/helpers/projects.dart';
import 'package:portfolio_shivaay/widgets/project_details_modal.dart';

class Projectcard extends StatefulWidget {
  final Projects project;

  Projectcard({super.key, required this.project});

  @override
  State<Projectcard> createState() => _ProjectcardState();
}

class _ProjectcardState extends State<Projectcard> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    Widget cardContents = AnimatedContainer(
      duration: Duration(milliseconds: 550),
      padding: EdgeInsets.all(30),
      height: isExpanded ? ht * 0.55 : ht * 0.4,
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
        boxShadow: isExpanded
            ? [BoxShadow(color: Colors.black26, blurRadius: 12)]
            : [],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.project.title,
            style: GoogleFonts.poiretOne(
              textStyle: TextStyleHelp.projectTextCard,
            ),
          ),
          SizedBox(height: ht * 0.07),
          Text(
            widget.project.short_description,
            textAlign: TextAlign.center,
            style: GoogleFonts.poiretOne(
              textStyle: TextStyleHelp.projectTextCard,
            ),
          ),
          SizedBox(height: ht * 0.07),
          SvgPicture.asset('assets/tech_stack/github.svg', color: Colors.white),
        ],
      ),
    );
    return GestureDetector(
      onTap: () => setState(
        () => showDialog(
          context: context,
          builder: (context) =>
              ProjectDetailsModal(project: widget.project, context: context),
        ),
      ),
      child: cardContents,
    );
  }
}
