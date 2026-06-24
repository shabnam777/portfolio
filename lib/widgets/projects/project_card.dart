import 'package:flutter/material.dart';

import '../../app/theme.dart';
import '../../data/tech_data.dart';
import '../../models/project_model.dart';
import '../tech/tech_chip.dart';
import 'project_details_page.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final p = widget.project;

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        transform: Matrix4.identity()..scale(hover ? 1.02 : 1),
        margin: const EdgeInsets.only(bottom: 22),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: panel,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: hover ? p.accent : lineColor),
          boxShadow: hover ? [BoxShadow(color: p.accent.withOpacity(.25), blurRadius: 25)] : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(p.screenshots.first,
                      width: 130,
                      height: 90,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                            width: 130,
                            height: 90,
                            color: panel2,
                            child: const Icon(Icons.image, color: muted),
                          )),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PROJECT ${p.number}',
                        style: TextStyle(color: p.accent, fontSize: 11),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        p.title,
                        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 18),
            Text(
              p.description,
              style: const TextStyle(color: muted, height: 1.5),
            ),
            const SizedBox(height: 18),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: p.stack.map((e) => TechChip(tech: getTech(e))).toList(),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (p.appLink.isNotEmpty) {
                      openLink(p.appLink);
                    }
                  },
                  child: Text(
                    'App Link  →  ${p.appLink}',
                    style: TextStyle(
                      color: p.accent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: bg,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      builder: (_) {
                        return ProjectCaseStudyModal(
                          project: p,
                        );
                      },
                    );
                  },
                  child: Text(
                    'View Case Study →',
                    style: TextStyle(
                      color: p.accent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
