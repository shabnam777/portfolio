import 'package:flutter/material.dart';

import '../../data/project_data.dart';
import 'project_card.dart';

class ShowcaseSection extends StatelessWidget {
  const ShowcaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          const Text(
            'PROJECT SHOWCASE',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),
            child: Column(
              children: projects.map((e) => ProjectCard(project: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
