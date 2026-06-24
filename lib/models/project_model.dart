import 'package:flutter/material.dart';

class ProjectModel {
  final String number;
  final String title;
  final String description;
  final String appLink;
  final List<String> screenshots;

  final List<String> stack;

  final Color accent;

  final String problem;
  final String solution;
  final String architecture;
  final List<String> features;
  final List<String> challenges;

  const ProjectModel({
    required this.number,
    required this.title,
    required this.description,
    required this.appLink,
    required this.screenshots,
    required this.stack,
    required this.accent,
    required this.problem,
    required this.solution,
    required this.architecture,
    required this.features,
    required this.challenges,
  });
}
