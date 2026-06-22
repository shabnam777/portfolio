import '../models/tech_model.dart';

const List<TechStack> allTechs = [
  TechStack('React', 'https://cdn.simpleicons.org/react'),
  TechStack('HTML', 'https://cdn.simpleicons.org/html5'),
  TechStack('CSS', 'https://cdn.simpleicons.org/css'),
  TechStack('LinkedIn', 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg'),
  TechStack('Bootstrap', 'https://cdn.simpleicons.org/bootstrap'),
  TechStack('Material UI', 'https://cdn.simpleicons.org/mui'),
  TechStack('Angular', 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/angularjs/angularjs-original.svg'),
  TechStack('Flutter', 'https://cdn.simpleicons.org/flutter'),
  TechStack('Next.js', 'https://cdn.simpleicons.org/nextdotjs'),
  TechStack('Vue', 'https://cdn.simpleicons.org/vuedotjs'),
  TechStack('TypeScript', 'https://cdn.simpleicons.org/typescript'),
  TechStack('JavaScript', 'https://cdn.simpleicons.org/javascript'),
  TechStack('Node.js', 'https://cdn.simpleicons.org/nodedotjs'),
  TechStack('Python', 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg'),
  TechStack('Express', 'https://cdn.simpleicons.org/express'),
  TechStack('Groq', 'https://cdn.jsdelivr.net/gh/glincker/thesvg@main/public/icons/groq/default.svg'),
  TechStack('OpenAI', 'https://cdn.simpleicons.org/openai'),
  TechStack('MongoDB', 'https://cdn.simpleicons.org/mongodb'),
  TechStack('PostgreSQL', 'https://cdn.simpleicons.org/postgresql'),
  TechStack('Firebase', 'https://cdn.simpleicons.org/firebase'),
  TechStack('Supabase', 'https://cdn.simpleicons.org/supabase'),
  TechStack('Dart', 'https://cdn.simpleicons.org/dart'),
  TechStack('Riverpod', 'https://cdn.simpleicons.org/flutter'),
  TechStack('Stripe', 'https://cdn.simpleicons.org/stripe'),
  TechStack('GitHub', 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg'),
  TechStack('Docker', 'https://cdn.simpleicons.org/docker'),
  TechStack('Cloudflare', 'https://cdn.simpleicons.org/cloudflare'),
  TechStack('Cloudinary', 'https://cdn.simpleicons.org/cloudinary'),
  TechStack('Replicate', 'https://cdn.simpleicons.org/replicate'),
  TechStack('ElevenLabs', 'https://cdn.simpleicons.org/elevenlabs'),
  TechStack('Vapi', 'https://cdn.simpleicons.org/vapi'),
  TechStack('BullMQ', 'https://cdn.simpleicons.org/redis'),
  TechStack('LLM', 'https://unpkg.com/@lobehub/icons-static-svg@latest/icons/openai-text.svg'),
  TechStack('Firebase', 'https://cdn.simpleicons.org/firebase'),
];

TechStack getTech(String name) {
  try {
    return allTechs.firstWhere((e) => e.name == name);
  } catch (e) {
    return const TechStack('Tech', 'https://cdn.simpleicons.org/code');
  }
}
