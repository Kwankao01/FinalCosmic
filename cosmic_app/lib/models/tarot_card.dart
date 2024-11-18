import 'package:midterm_app/models/question_type.dart';

class TarotCard {
  final String name;
  final String image;
  final String suit;
  final Map<QuestionType, Map<String, String>> definitions;

  TarotCard({
    required this.name,
    required this.image,
    required this.suit,
    required this.definitions,
  });
}
