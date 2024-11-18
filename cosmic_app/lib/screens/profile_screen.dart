import 'package:flutter/material.dart';
import 'package:midterm_app/models/compa_card.dart';
import 'package:midterm_app/models/user_model.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  final List<dynamic> chosenCards;

  ProfileScreen({required this.chosenCards});

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF4E5D0),
        title: const Text('Profile'),
      ),
      backgroundColor: const Color(0xffF4E5D0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, ${userModel.name},",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Your Compatibility Cards:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chosenCards.length,
                itemBuilder: (context, index) {
                  var cardData = chosenCards[index];
                  print("Image URL: ${cardData[2]}");
                  return ZodiacCard(
                    cardData: CardData(
                      name: cardData[0],
                      description: cardData[1],
                      imageURL: cardData[2],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
