import 'package:flutter/material.dart';

import '../../app/theme.dart';

class NavBar extends StatefulWidget {
  final VoidCallback onHome;
  final VoidCallback onProjects;
  final VoidCallback onJourney;
  final VoidCallback onSkills;
  final VoidCallback onContact;

  const NavBar({
    super.key,
    required this.onHome,
    required this.onProjects,
    required this.onJourney,
    required this.onSkills,
    required this.onContact,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String selected = 'JOURNEY';

  void change(String name, VoidCallback action) {
    setState(() {
      selected = name;
    });

    action();
  }

  Widget _navItem(
    String text,
    IconData icon,
    VoidCallback tap,
  ) {
    final active = selected == text;

    return InkWell(
      onTap: tap,
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
        decoration: BoxDecoration(
          color: active ? teal.withOpacity(.15) : panel2.withOpacity(.7),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: active ? teal : lineColor),
          boxShadow: active ? [BoxShadow(color: teal.withOpacity(.35), blurRadius: 18)] : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 15,
              color: active ? teal : muted,
            ),
            const SizedBox(width: 7),
            Text(
              text,
              style: TextStyle(color: active ? textColor : muted, fontSize: 11, letterSpacing: 1, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(color: bg.withOpacity(.92), border: const Border(bottom: BorderSide(color: lineColor))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              change('HOME', widget.onJourney);
            },
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [teal, violet],
                    ),
                  ),
                  child: const Icon(
                    Icons.auto_awesome,
                    size: 18,
                    color: bg,
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SHABNAM',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      'AI ENGINEER',
                      style: TextStyle(
                        fontSize: 9,
                        color: muted,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              _navItem('JOURNEY', Icons.timeline_outlined, () => change('JOURNEY', widget.onJourney)),
              _navItem('PROJECTS', Icons.layers_outlined, () => change('PROJECTS', widget.onProjects)),
              _navItem('SKILLS', Icons.code_outlined, () => change('SKILLS', widget.onSkills)),
              _navItem('CONTACT', Icons.mail_outline, () => change('CONTACT', widget.onContact)),
            ],
          )
        ],
      ),
    );
  }
}
