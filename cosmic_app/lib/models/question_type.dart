import 'package:flutter/material.dart';

class QuestionType {
  final String name;
  final IconData icon;

  QuestionType({required this.name, required this.icon});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QuestionType && other.name == name && other.icon == icon;
  }

  @override
  int get hashCode => name.hashCode ^ icon.hashCode;

  static List<QuestionType> getAllTypes() {
    return [
      QuestionType(name: 'General', icon: Icons.auto_awesome),
      QuestionType(name: 'Love', icon: Icons.favorite),
      QuestionType(name: 'Career', icon: Icons.work),
      QuestionType(name: 'Spiritual', icon: Icons.self_improvement),
    ];
  }
}
