import 'package:flutter/material.dart';

import '../../app/theme.dart';
import '../../data/tech_data.dart';
import '../../models/project_model.dart';
import '../tech/tech_chip.dart';

class ProjectCaseStudyModal extends StatelessWidget {
  final ProjectModel project;

  const ProjectCaseStudyModal({
    super.key,
    required this.project,
  });

  Widget section(String title, Widget child) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: panel,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: lineColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: teal),
          ),
          const SizedBox(height: 12),
          child
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: .88,
      maxChildSize: .96,
      builder: (context, controller) {
        return Container(
          decoration: const BoxDecoration(color: bg, borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
          child: SingleChildScrollView(
            controller: controller,
            padding: const EdgeInsets.all(22),
            child: Column(
              children: [
                Container(
                  width: 55,
                  height: 5,
                  decoration: BoxDecoration(color: muted, borderRadius: BorderRadius.circular(20)),
                ),

                const SizedBox(height: 25),

// HERO

                Text(
                  project.number,
                  style: TextStyle(color: project.accent, fontSize: 12, letterSpacing: 2),
                ),

                const SizedBox(height: 8),

                Text(
                  project.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                Text(
                  project.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: muted, height: 1.5),
                ),

                const SizedBox(height: 25),

// screenshots

                SizedBox(
                  height: 160,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: project.screenshots.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 14),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18), boxShadow: [BoxShadow(color: project.accent.withOpacity(.25), blurRadius: 20)]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.asset(
                            project.screenshots[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 25),

                section(
                  'Problem',
                  Text(
                    project.problem,
                    style: const TextStyle(color: muted, height: 1.6),
                  ),
                ),

                section(
                  'Solution',
                  Text(
                    project.solution,
                    style: const TextStyle(color: muted, height: 1.6),
                  ),
                ),

                section(
                  'Architecture',
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        project.architecture,
                        style: const TextStyle(color: muted, height: 1.7),
                      ),
                    ),
                  ),
                ),

                section(
                  'Features',
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: project.features
                        .map((e) => Chip(
                              label: Text(e),
                              backgroundColor: panel2,
                            ))
                        .toList(),
                  ),
                ),

                section(
                  'Challenges',
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: project.challenges
                        .map((e) => Chip(
                              label: Text(e),
                              backgroundColor: panel2,
                            ))
                        .toList(),
                  ),
                ),

                section(
                  'Tech Stack',
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: project.stack.map((e) => TechChip(tech: getTech(e))).toList(),
                  ),
                ),

                const SizedBox(height: 30)
              ],
            ),
          ),
        );
      },
    );
  }
}
