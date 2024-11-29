import 'dart:async';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:midterm_app/services/history_service.dart';
import 'package:midterm_app/models/tarot_card.dart';

class TarotService {
  final _firestore = FirebaseFirestore.instance;

  Future<TarotCard?> getRandomCard() async {
    try {
      print("Fetching cards from Firestore...");

      QuerySnapshot snapshot = await _firestore.collection('tarot').get();
      print("Found ${snapshot.docs.length} cards");

      if (snapshot.docs.isEmpty) {
        print("No cards found in collection");
        return null;
      }

      final random = Random();
      final randomDoc = snapshot.docs[random.nextInt(snapshot.docs.length)];
      print("Selected card ID: ${randomDoc.id}");

      final data = randomDoc.data() as Map<String, dynamic>;
      print("Card data: $data");

      TarotCard card = TarotCard.fromSnapshot(data);
      card.dbId = randomDoc.id;

      print("Successfully created TarotCard object");
      return card;
    } catch (e, stackTrace) {
      print("Error getting random card: $e");
      print("Stack trace: $stackTrace");
      return null;
    }
  }
}

class TarotScreen extends StatefulWidget {
  final String title;
  const TarotScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<TarotScreen> createState() => _TarotScreenState();
}

class _TarotScreenState extends State<TarotScreen> {
  int _currentIndex = 0;
  TarotCard? drawnCard;
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();
  String _userQuestion = '';
  final _questionController = TextEditingController();
  final _tarotService = TarotService();

  @override
  void dispose() {
    _questionController.dispose();
    super.dispose();
  }

  void _resetScreen() {
    setState(() {
      drawnCard = null;
      _userQuestion = '';
      _questionController.clear();
    });
  }

  Future<void> _drawCard() async {
    if (_userQuestion.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your question')),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final card = await _tarotService.getRandomCard();
      if (card != null && card.name.isNotEmpty && card.image.isNotEmpty) {
        setState(() {
          drawnCard = card;
        });
        _navigateToResultScreen();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Failed to load card data. Please try again.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                'Connection error. Please check your internet connection.')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'Piazzolla',
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildQuestionForm(),
              SizedBox(height: 20),
              _buildDrawCardSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _questionController,
            decoration: InputDecoration(
              labelText: 'Enter your question',
              border: OutlineInputBorder(),
              hintText: 'What would you like to know?',
            ),
            maxLines: 1,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your question';
              }
              return null;
            },
            onSaved: (value) {
              _userQuestion = value!;
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            child: Text('Submit Question'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                FocusScope.of(context).unfocus();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDrawCardSection() {
    return Center(
      child: Column(
        children: [
          Text(
            _userQuestion.isEmpty
                ? 'Enter your question above'
                : 'Tap the card to reveal your reading',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              fontFamily: 'Piazzolla',
            ),
          ),
          SizedBox(height: 20),
          isLoading
              ? CircularProgressIndicator()
              : GestureDetector(
                  onTap: _drawCard,
                  child: Container(
                    width: 300,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/backcard.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  void _navigateToResultScreen() {
    if (drawnCard == null) return;

    // ส่งผู้ใช้ไปที่หน้าผลลัพธ์ทันที
    Navigator.pushNamed(
      context,
      '/tarot_result',
      arguments: {
        'tarotid': drawnCard!.dbId,
        'userQuestion': _userQuestion,
      },
    ).then((_) => _resetScreen());

    // บันทึกข้อมูลลง Firebase โดยไม่รบกวน UI
    final historyService = HistoryService();
    historyService
        .saveReading(
      cardName: drawnCard!.name,
      cardSuit: drawnCard!.suit,
      drawDate: DateTime.now(),
      questionType: "",
      image: drawnCard!.image,
      general: drawnCard!.general,
      love: drawnCard!.love,
      career: drawnCard!.career,
      userQuestion: _userQuestion,
      accuracy: 0,
    )
        .catchError((error) {
      print("Error saving history: $error");
    });
  }
}
