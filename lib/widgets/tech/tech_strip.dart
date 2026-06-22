import 'package:flutter/material.dart';

import '../../data/tech_data.dart';
import 'tech_chip.dart';

class TechStrip extends StatelessWidget {
  const TechStrip({super.key});

  @override
  Widget build(BuildContext context) {
    final list = ['React', 'Angular', 'Flutter', 'Next.js', 'Node.js', 'Python', 'MongoDB', 'PostgreSQL'];

    return Padding(
      padding: const EdgeInsets.all(30),

      child: Column(
        children: [
          const Text('TECH STACK', style: TextStyle(letterSpacing: 2)),

          const SizedBox(height: 20),

          Wrap(spacing: 12, runSpacing: 12, children: list.map((e) => TechChip(tech: getTech(e))).toList()),
        ],
      ),
    );
  }
}
