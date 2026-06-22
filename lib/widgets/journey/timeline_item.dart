import 'package:flutter/material.dart';

import '../../app/theme.dart';
import '../../data/tech_data.dart';
import '../tech/tech_chip.dart';

class TimelineData {
  final String year;
  final String title;
  final String role;
  final String description;
  final List<String> skills;
  final Color color;

  TimelineData({
    required this.year,
    required this.title,
    required this.role,
    required this.description,
    required this.skills,
    required this.color,
  });
}

class TimelineItem extends StatelessWidget {
  final TimelineData data;
  final bool open;
  final VoidCallback onTap;

  const TimelineItem({
    super.key,
    required this.data,
    required this.open,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: data.color, width: 3)),
            ),
            Container(
              height: open ? 240 : 55,
              width: 3,
              decoration: BoxDecoration(gradient: LinearGradient(colors: [data.color, violet, pink])),
            )
          ],
        ),
        const SizedBox(width: 15),
        Expanded(
            child: GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.all(18),
            margin: const EdgeInsets.only(bottom: 20),
            decoration:
                BoxDecoration(color: panel, borderRadius: BorderRadius.circular(14), border: Border.all(color: open ? data.color : lineColor)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${data.year} • ${data.title}',
                    style: TextStyle(color: data.color, fontWeight: FontWeight.bold),
                  ),
                  Icon(open ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down, color: muted)
                ],
              ),
              if (open) ...[
                const SizedBox(height: 15),
                Text(
                  data.role,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const SizedBox(height: 10),
                Text(
                  data.description,
                  style: const TextStyle(color: muted, height: 1.5),
                ),
                const SizedBox(height: 18),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: data.skills.map((e) => TechChip(tech: getTech(e))).toList(),
                )
              ]
            ]),
          ),
        ))
      ],
    );
  }
}
