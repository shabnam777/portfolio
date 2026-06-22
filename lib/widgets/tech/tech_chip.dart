import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/theme.dart';
import '../../models/tech_model.dart';

class TechChip extends StatelessWidget {
  final TechStack tech;

  const TechChip({super.key, required this.tech});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(color: panel2, borderRadius: BorderRadius.circular(8), border: Border.all(color: lineColor)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.network(
            tech.icon,
            width: 18,
            height: 18,
            placeholderBuilder: (context) => const Icon(Icons.code, size: 16, color: teal),
          ),
          const SizedBox(width: 7),
          Text(
            tech.name,
            style: const TextStyle(fontSize: 12, color: textColor),
          )
        ],
      ),
    );
  }
}
