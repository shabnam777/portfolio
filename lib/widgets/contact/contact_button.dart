import 'package:flutter/material.dart';

import '../../app/theme.dart';

class ContactButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final bool primary;

  const ContactButton({super.key, required this.text, required this.icon, required this.onTap, this.primary = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      borderRadius: BorderRadius.circular(8),

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),

        decoration: BoxDecoration(
          color: primary ? teal : Colors.transparent,

          borderRadius: BorderRadius.circular(8),

          border: Border.all(color: primary ? teal : lineColor),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,

          children: [
            Icon(icon, size: 18, color: primary ? bg : textColor),

            const SizedBox(width: 8),

            Text(
              text,

              style: TextStyle(color: primary ? bg : textColor, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
