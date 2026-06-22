import 'package:flutter/material.dart';

import '../../app/theme.dart';

class SkillChip extends StatelessWidget {
  final String text;

  const SkillChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),

      decoration: BoxDecoration(
        color: panel,

        borderRadius: BorderRadius.circular(20),

        border: Border.all(color: lineColor),
      ),

      child: Text(text, style: const TextStyle(fontSize: 12, color: textColor)),
    );
  }
}
