import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:midterm_app/models/tarot_card.dart';

class TarotResultScreen extends StatefulWidget {
  const TarotResultScreen({Key? key}) : super(key: key);

  @override
  State<TarotResultScreen> createState() => _TarotResultScreenState();
}

class _TarotResultScreenState extends State<TarotResultScreen> {
  TarotCard? card;
  String userQuestion = '';
  final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _fetchCardAndQuestion());
  }

  Future<void> _fetchCardAndQuestion() async {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String tarotid = args['tarotid'] ?? '';
    userQuestion = args['userQuestion'] ?? '';

    if (tarotid.isNotEmpty) {
      try {
        DocumentSnapshot doc =
            await _firestore.collection('tarot').doc(tarotid).get();
        if (doc.exists) {
          setState(() {
            card = TarotCard.fromSnapshot(doc.data() as Map<String, dynamic>);
          });
        }
      } catch (e) {
        print("Error loading card: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Tarot Reading',
          style: TextStyle(
            fontFamily: 'Piazzolla',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: card == null
          ? const Center(child: CircularProgressIndicator())
          : _buildResultContent(context),
    );
  }

  Widget _buildResultContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Question:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Piazzolla',
                  ),
                ),
                Text(
                  userQuestion,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Piazzolla',
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              card!.image,
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  '${card!.name} of ${card!.suit}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Piazzolla',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                _buildCardDetails(),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/history'); // Adjust the route name as needed
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Piazzolla',
                      fontWeight: FontWeight.w600,
                    ),
                    foregroundColor: Colors.black87, // Neutral text color
                  ).copyWith(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(WidgetState.pressed)) {
                          return Colors.black12; // Minimal press feedback
                        }
                        return null;
                      },
                    ),
                  ),
                  child: const Text(
                    'View My Readings',
                    style: TextStyle(
                      color: Color(0xFF735688),
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration
                          .underline, // Optional: add an underline
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardDetails() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection('General Meaning:', card!.general),
          const SizedBox(height: 16),
          _buildSection('Love Meaning:', card!.love),
          const SizedBox(height: 16),
          _buildSection('Career Meaning:', card!.career),
        ],
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Piazzolla',
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Piazzolla',
          ),
        ),
      ],
    );
  }
}
