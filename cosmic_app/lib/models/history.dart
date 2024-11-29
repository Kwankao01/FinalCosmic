import 'package:cloud_firestore/cloud_firestore.dart';

class CardDraw {
  final String cardName;
  final String cardSuit;
  final DateTime drawDate;
  final String questionType;
  final String image;
  final String general;
  final String love;
  final String career;
  final String userQuestion;
  final double? accuracy;

  CardDraw({
    required this.cardName,
    required this.cardSuit,
    required this.drawDate,
    required this.questionType,
    required this.image,
    required this.general,
    required this.love,
    required this.career,
    required this.userQuestion,
    this.accuracy,
  });

  factory CardDraw.fromFirestore(Map<String, dynamic> data) {
    return CardDraw(
      cardName: data['cardName'] ?? '',
      cardSuit: data['cardSuit'] ?? '',
      drawDate: (data['drawDate'] as Timestamp).toDate(),
      questionType: data['questionType'] ?? '',
      image: data['image'] ?? '',
      general: data['general'] ?? '',
      love: data['love'] ?? '',
      career: data['career'] ?? '',
      userQuestion: data['userQuestion'] ?? '',
      accuracy: data['accuracy'] == 0 ? null : data['accuracy']?.toDouble(),
    );
  }

  // แปลง CardDraw เป็น Map สำหรับเก็บใน Firestore
  Map<String, dynamic> toMap() {
    return {
      'cardName': cardName,
      'cardSuit': cardSuit,
      'drawDate': drawDate,
      'questionType': questionType,
      'image': image,
      'general': general,
      'love': love,
      'career': career,
      'userQuestion': userQuestion,
      'accuracy': accuracy,
    };
  }
}
