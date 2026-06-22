import 'package:flutter/material.dart';

import '../../app/theme.dart';
import 'timeline_item.dart';

class JourneySection extends StatefulWidget {
  const JourneySection({super.key});

  @override
  State<JourneySection> createState() => _JourneySectionState();
}

class _JourneySectionState extends State<JourneySection> {
  int active = 0;

  final items = [
    TimelineData(
      year: '2018',
      title: 'Frontend Internship',
      role: 'Frontend Developer Intern',
      description: 'Started frontend development journey building responsive interfaces.',
      skills: ['HTML', 'Bootstrap', 'JavaScript'],
      color: teal,
    ),
    TimelineData(
      year: '2019',
      title: 'Angular Developer',
      role: 'Frontend Engineer',
      description: 'Worked on scalable Angular applications and APIs.',
      skills: ['Angular', 'TypeScript', 'Material UI'],
      color: const Color.fromARGB(255, 63, 95, 224),
    ),
    TimelineData(
      year: '2021',
      title: 'Lead Frontend',
      role: 'Remote Frontend Developer',
      description: 'Handled architecture, UI systems and production releases.',
      skills: ['React', 'Angular', 'Next.js'],
      color: violet,
    ),
    TimelineData(
      year: '2024',
      title: 'AI Transition',
      role: 'AI Product Developer',
      description: 'Started building AI SaaS products with LLM integrations.',
      skills: ['Python', 'Groq', 'LLM'],
      color: violet,
    ),
    TimelineData(
      year: '2025',
      title: 'AI Engineer',
      role: 'Full Stack AI Engineer',
      description: 'Building production AI products end to end.',
      skills: ['Flutter', 'Node.js', 'MongoDB', 'Stripe', 'PostgreSQL', 'ElevenLabs'],
      color: pink,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 850),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text('THE JOURNEY', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            Column(
              children: List.generate(items.length, (index) {
                return TimelineItem(
                  data: items[index],
                  open: active == index,
                  onTap: () {
                    setState(() {
                      active = active == index ? -1 : index;
                    });
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
