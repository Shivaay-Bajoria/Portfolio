import 'package:flutter/material.dart';
import 'package:portfolio_shivaay/helpers/heroFunctions.dart';
import 'package:portfolio_shivaay/helpers/keys.dart';

class HeroCard extends StatefulWidget {
  const HeroCard({super.key});

  @override
  State<HeroCard> createState() => _HeroCardState();
}

class _HeroCardState extends State<HeroCard> {
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
          child: isMobile
              ? Center(
                  child: Container(
                    height: ht * 1.2,
                    width: wt * 0.85,
                    //DEcorating the outiside container
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF000000), // Pure Black
                          Color(0xFF1E1E1E), // Charcoal Grey
                          Color.fromRGBO(
                            212,
                            175,
                            55,
                            0.1,
                          ), // Gold with 20% opacity
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(360),
                      border: Border.all(color: Color(0xFFD4AF37)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: ht * 0.1),
                          HeroImage(width: wt * 0.35, height: ht * 0.35),
                          //HeroLogo(width: wt * 0.75, height: ht * 0.3),
                          //SizedBox(height: 25),
                          HeroText(width: wt * 1, height: ht * 0.8),
                        ],
                      ),
                    ),
                  ),
                )
              : Center(
                  child: Container(
                    height: ht * 0.7,
                    width: wt * 0.75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF000000), // Pure Black
                          Color(0xFF1E1E1E), // Charcoal Grey
                          Color.fromRGBO(
                            212,
                            175,
                            55,
                            0.1,
                          ), // Gold with 20% opacity
                        ],
                      ),
                      border: Border.all(color: Color(0xFFD4AF37)),
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HeroImage(width: wt * 0.25, height: ht * 0.45),
                          SizedBox(width: 100),
                          //HeroLogo(width: wt * 0.25, height: ht * 0.45),
                          //SizedBox(width: 50),
                          HeroText(width: wt * 0.25, height: ht * 0.45),
                        ],
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
