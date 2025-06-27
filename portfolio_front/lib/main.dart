import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shivaay/helpers/controllers.dart';
import 'package:portfolio_shivaay/helpers/keys.dart';
import 'package:portfolio_shivaay/screens/about.dart';
import 'package:portfolio_shivaay/screens/home.dart';
import 'package:portfolio_shivaay/screens/projects.dart';
import 'package:portfolio_shivaay/widgets/AppBar_Widget.dart';
import 'package:portfolio_shivaay/widgets/bottom_footer.dart';
import 'package:shimmer/shimmer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppbarWidget(),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF0A0F1D), // Midnight Blue
                    Color(0xFF1E1E1E), // Charcoal Gray
                  ],
                ),
              ),
            ),

            //Shimmer Effect
            Shimmer.fromColors(
              baseColor: Colors.transparent,
              highlightColor: Color(
                0x33D4AF37,
              ), // Golden highlight with opacity
              direction: ShimmerDirection.ltr,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color:
                    Colors.white, // This is required but overridden by shimmer
              ),
            ),

            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  KeyedSubtree(key: homeKey, child: HeroCard()),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  KeyedSubtree(key: abouKey, child: AboutMeCard()),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  KeyedSubtree(key: projectsKey, child: ProjectScreen()),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  bottomFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
