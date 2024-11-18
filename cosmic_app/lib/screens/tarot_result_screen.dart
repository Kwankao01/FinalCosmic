import 'package:flutter/material.dart';

class TarotResultScreen extends StatelessWidget {
  const TarotResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String cardName = args['cardName'] as String;
    final String cardSuit = args['cardSuit'] as String;
    final String cardImage = args['cardImage'] as String;
    final String cardKeyword =
        args['cardDefinition']['keyword'] as String; // Access keyword
    final String cardDefinition =
        args['cardDefinition']['definition'] as String; // Access definition
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Tarot Reading'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              cardImage,
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$cardName of $cardSuit',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),

                  // Keyword
                  Text('Keyword:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(cardKeyword, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 16),
                  // Card Meaning
                  Text('Card Meaning:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(cardDefinition, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
