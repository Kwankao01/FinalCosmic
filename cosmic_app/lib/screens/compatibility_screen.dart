import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:midterm_app/models/user_model.dart';
import 'package:midterm_app/models/compa_card.dart';
import 'package:midterm_app/screens/profile_screen.dart';

class CompatibilityScreen extends StatefulWidget {
  @override
  State<CompatibilityScreen> createState() => _CompatibilityState();
}

class _CompatibilityState extends State<CompatibilityScreen> {
  final List<dynamic> zodiacData = [
    ['Aries', 'March 21–April 19', 'assets/images/zodiac/Aries.png'],
    ['Taurus', 'April 20–May 20', 'assets/images/zodiac/Taurus.png'],
    ['Gemini', 'May 21–June 21', 'assets/images/zodiac/Gemini.png'],
    ['Cancer', 'June 22–July 22', 'assets/images/zodiac/Cancer.png'],
    ['Leo', 'July 23–August 22', 'assets/images/zodiac/Leo.png'],
    ['Virgo', 'August 23–September 22', 'assets/images/zodiac/Virgo.png'],
    ['Libra', 'September 23–October 23', 'assets/images/zodiac/Libra.png'],
    ['Scorpio', 'October 24–November 21', 'assets/images/zodiac/Scorpio.png'],
    ['Sagittarius','November 22–December 21','assets/images/zodiac/Sagittarius.png'],
    ['Capricorn','December 22–January 19','assets/images/zodiac/Capricorn.png'],
    ['Aquarius', 'January 20–February 18', 'assets/images/zodiac/Aquarius.png'],
    ['Pisces', 'February 19–March 20', 'assets/images/zodiac/Pisces.png'],
  ];

  List<dynamic> _chosenCards = [];
  bool _showCompatibleSigns = false;

  List<String> getCompatibleSigns(String userZodiac) {
    Map<String, List<String>> compatibility = {
      'Aries': ['Gemini', 'Leo', 'Sagittarius'],
      'Taurus': ['Cancer', 'Virgo', 'Capricorn'],
      'Gemini': ['Aries', 'Leo', 'Libra'],
      'Cancer': ['Taurus', 'Virgo', 'Scorpio'],
      'Leo': ['Aries', 'Gemini', 'Libra'],
      'Virgo': ['Taurus', 'Cancer', 'Capricorn'],
      'Libra': ['Gemini', 'Leo', 'Sagittarius'],
      'Scorpio': ['Cancer', 'Pisces', 'Capricorn'],
      'Sagittarius': ['Aries', 'Leo', 'Aquarius'],
      'Capricorn': ['Taurus', 'Virgo', 'Pisces'],
      'Aquarius': ['Gemini', 'Libra', 'Sagittarius'],
      'Pisces': ['Cancer', 'Scorpio', 'Capricorn'],
    };

    return compatibility[userZodiac] ?? [];
  }

  void _showZodiacCompatibility() {
    final userModel = Provider.of<UserModel>(context, listen: false);
    String userZodiac = userModel.zodiacSign;
    List<String> compatibleSigns = getCompatibleSigns(userZodiac);

    setState(() {
      _chosenCards = zodiacData
          .where((sign) => compatibleSigns.contains(sign[0]))
          .toList();
      _showCompatibleSigns = true;
    });
    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            chosenCards: _chosenCards,
          ),
        )
        );
  }

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF4E5D0),
        title: Text('Compatibility Page'),
      ),
      backgroundColor: Color(0xffF4E5D0),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8.0)),
            Text(
              "Your Zodiac Sign Compatibility",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Name: ${userModel.name}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Image.asset(userModel.zodiacImage, width: 100, height: 100),
            Text(
              "Your Zodiac: ${userModel.zodiacSign}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showZodiacCompatibility,
              child: Text('Show Compatible Signs'),
            ),
            SizedBox(height: 20),
            if (_showCompatibleSigns)
              Text(
                "These are the signs that are compatible with you:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            if (_showCompatibleSigns)
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: _chosenCards.length,
                  itemBuilder: (context, index) {
                    var cardData = _chosenCards[index];
                    return ZodiacCard(
                      cardData: CardData(
                        name: cardData[0],
                        description: cardData[1],
                        imageURL: cardData[2],
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Compatibility Details'),
                              content: Text(
                                "${userModel.zodiacSign} is compatible with ${cardData[0]}!",
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      },
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
