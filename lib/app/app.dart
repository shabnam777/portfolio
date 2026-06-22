import 'package:flutter/material.dart';

import '../widgets/contact/contact_section.dart';
import '../widgets/journey/journey_section.dart';
import '../widgets/navigation/navbar.dart';
import '../widgets/projects/showcase_section.dart';
import '../widgets/tech/tech_strip.dart';
import 'theme.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: portfolioTheme(), home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();

  final journeyKey = GlobalKey();
  final projectsKey = GlobalKey();
  final skillsKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    final ctx = key.currentContext;

    if (ctx != null) {
      Scrollable.ensureVisible(ctx, duration: const Duration(milliseconds: 450), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            NavBar(
              onHome: () {
                controller.animateTo(0, duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
              },

              onJourney: () => scrollTo(journeyKey),

              onProjects: () => scrollTo(projectsKey),

              onSkills: () => scrollTo(skillsKey),

              onContact: () => scrollTo(contactKey),
            ),

            Expanded(
              child: SingleChildScrollView(
                controller: controller,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      KeyedSubtree(key: journeyKey, child: const JourneySection()),
                  
                      const TechStrip(),
                  
                      KeyedSubtree(key: projectsKey, child: const ShowcaseSection()),
                  
                      KeyedSubtree(key: skillsKey, child: const SizedBox()),
                  
                      KeyedSubtree(key: contactKey, child: const ContactSection()),
                  
                      const SizedBox(height: 30),
                  
                      const Text('© 2026 Shabnam — built with curiosity & caffeine', style: TextStyle(color: muted, fontSize: 12)),
                  
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
