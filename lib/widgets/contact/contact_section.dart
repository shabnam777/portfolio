import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> launchLink(String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),

      child: Column(
        children: [
          const Text("Let's build something.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),

          const Text('Open for AI Engineering and Full Stack opportunities.', style: TextStyle(color: Colors.grey)),

          const SizedBox(height: 25),

          Wrap(
            spacing: 12,

            children: [
              ContactButton(
                text: 'Email',

                icon: Icons.email,

                primary: true,

                onTap: () {
                  launchLink('mailto:shabnam@example.com');
                },
              ),

              ContactButton(
                text: 'GitHub',

                icon: Icons.code,

                onTap: () {
                  launchLink('https://github.com');
                },
              ),

              ContactButton(
                text: 'LinkedIn',

                icon: Icons.person,

                onTap: () {
                  launchLink('https://linkedin.com');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
