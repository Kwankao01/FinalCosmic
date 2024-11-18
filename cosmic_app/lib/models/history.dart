import 'package:flutter/material.dart';

class CardDraw {
  final String cardName;
  final String cardSuit;
  final DateTime drawDate;
  final String questionType;
  final String image;
  final String keyword;
  final String definition;
  final String userQuestion;

  CardDraw({
    required this.cardName,
    required this.cardSuit,
    required this.drawDate,
    required this.questionType,
    required this.image,
    required this.keyword,
    required this.definition,
    required this.userQuestion,
  });
}

class HistoryModel extends ChangeNotifier {
  List<CardDraw> _cardHistory = [];

  List<CardDraw> get cardHistory => _cardHistory;

  void addCardToHistory(
    String cardName,
    String cardSuit,
    DateTime date,
    String questionType,
    String image,
    String keyword,
    String definition,
    String userQuestion,
  ) {
    _cardHistory.add(CardDraw(
      cardName: cardName,
      cardSuit: cardSuit,
      drawDate: date,
      questionType: questionType,
      image: image,
      keyword: keyword,
      definition: definition,
      userQuestion: userQuestion,
    ));
    notifyListeners();
  }

  void clearHistory() {
    _cardHistory.clear();
    notifyListeners();
  }
}
