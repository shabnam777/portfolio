import 'package:flutter/material.dart';

import '../models/project_model.dart';

const projects = [
  ProjectModel(
      number: '01',
      title: 'Brand Analysis AI',
      appLink: 'https://ai-brand-analyzer-rose.vercel.app/',
      description: 'Checks brand presence and sentiment across the web with LLM and custom crawlers.',
      screenshots: [
        'assets/projects/brand1.png',
        'assets/projects/brand2.png',
        'assets/projects/brand3.png',
      ],
      stack: ['Flutter', 'LLM Integration', 'Groq', 'PostgreSQL'],
      accent: Color(0xFF3FE0C5),
      problem: 'Brands need quick insights about online reputation, sentiment and customer perception.',
      solution: 'Built an AI powered analysis platform that crawls web data and generates structured brand insights using LLM workflows.',
      architecture: '''
Flutter App

↓

Node.js API

↓

Crawler Engine

↓

Groq LLM Processing

↓

PostgreSQL Database
''',
      features: ['Brand sentiment analysis', 'AI generated reports', 'Web crawling pipeline', 'Data visualization'],
      challenges: ['Large scale data processing', 'Prompt accuracy', 'Optimizing LLM responses']),
  ProjectModel(
      number: '02',
      title: 'LifeDecide AI',
      appLink: '',
      description: 'Next.js SaaS counseling platform with AI guidance, subscription system and LLM integration.',
      screenshots: [
        'assets/projects/lifedecide1.png',
        'assets/projects/lifedecide2.png',
        'assets/projects/lifedecide3.png',
      ],
      stack: ['Next.js', 'TypeScript', 'Groq', 'Stripe', 'PostgreSQL'],
      accent: Color(0xFF3FE0C5),
      problem: 'Users needed personalized guidance instead of generic information.',
      solution: 'Created an AI counseling platform with category based conversations and subscription access.',
      architecture: '''
Next.js Frontend

↓

API Layer

↓

LLM Integration

↓

PostgreSQL

↓

Stripe Billing
''',
      features: ['AI counselling', 'Authentication', 'Subscription system', 'Personalized recommendations'],
      challenges: ['LLM response quality', 'Secure payments', 'Scalable SaaS design']),
  ProjectModel(
      number: '03',
      title: 'TobaccoCRM v3',
      appLink: 'https://tobaccocrm.web.app/',
      description: 'Full stack CRM with Flutter mobile app, Node backend and AI validation pipeline.',
      screenshots: [
        'assets/projects/crm1.png',
        'assets/projects/crm2.png',
        'assets/projects/crm3.png',
      ],
      stack: ['Flutter', 'Node.js', 'MongoDB', 'Express'],
      accent: Color(0xFF9B6BF0),
      problem: 'Sales teams required a reliable CRM with mobile workflows and automated validation.',
      solution: 'Developed a production CRM with Flutter frontend, Node APIs and AI based validation.',
      architecture: '''
Flutter Mobile

↓

Node.js Backend

↓

Express APIs

↓

MongoDB
''',
      features: ['Lead management', 'Mobile CRM', 'AI validation', 'Role based workflows'],
      challenges: ['Complex workflows', 'API optimization', 'Mobile performance']),
  ProjectModel(
      number: '04',
      title: 'TryOn Growth Automation',
      description: 'Multi tenant automation platform with realtime tracking.',
      screenshots: [
        'assets/projects/tryon1.png',
        'assets/projects/tryon2.png',
        'assets/projects/tryon3.png',
      ],
      stack: ['Flutter', 'Firebase', 'Node.js', 'BullMQ'],
      accent: Color(0xFFC25FD6),
      problem: 'E-commerce businesses needed automated growth workflows and real-time tracking.',
      solution: 'Built automation engine with background jobs and realtime data updates.',
      architecture: ''',
   
Flutter App

↓

Node.js Server

↓

BullMQ Workers

↓

Firebase
''',
      features: ['Automation workflows', 'Realtime tracking', 'Background jobs', 'Multi tenant system'],
      challenges: ['Queue management', 'Realtime updates', 'Scaling workers'],
      appLink: ''),
];
