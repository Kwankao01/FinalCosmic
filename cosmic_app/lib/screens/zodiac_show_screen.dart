import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_model.dart';

class ZodiacShowScreen extends StatelessWidget {
  final String zodiacSign;

  const ZodiacShowScreen({Key? key, required this.zodiacSign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    // Retrieve the user's zodiac sign
    final selectedZodiacSign = userModel.zodiacSign;

    // Zodiac details map
    final Map<String, Map<String, dynamic>> zodiacDetails = const {
      'Aries': {
        'Date Range': 'March 21 - April 19',
        'Personality Traits': {
          'Strengths': 'Courageous, determined, confident',
          'Weaknesses': 'Impatient, moody, short-tempered',
        },
        'Lucky Color': 'Red',
        'Lucky Numbers': '9, 8, 7',
      },
      'Taurus': {
        'Date Range': 'April 20 - May 20',
        'Personality Traits': {
          'Strengths': 'Reliable, patient, practical',
          'Weaknesses': 'Stubborn, possessive',
        },
        'Lucky Color': 'Green',
        'Lucky Numbers': '6, 4, 2',
      },
      'Gemini': {
        'Date Range': 'May 21 - June 20',
        'Personality Traits': {
          'Strengths': 'Adaptable, outgoing, intelligent',
          'Weaknesses': 'Nervous, inconsistent',
        },
        'Lucky Color': 'Yellow',
        'Lucky Numbers': '5, 8, 14',
      },
      'Cancer': {
        'Date Range': 'June 21 - July 22',
        'Personality Traits': {
          'Strengths': 'Tenacious, highly imaginative, loyal',
          'Weaknesses': 'Moody, pessimistic, suspicious',
        },
        'Lucky Color': 'Silver',
        'Lucky Numbers': '2, 7, 11',
      },
      'Leo': {
        'Date Range': 'July 23 - August 22',
        'Personality Traits': {
          'Strengths': 'Creative, passionate, generous',
          'Weaknesses': 'Arrogant, stubborn, self-centered',
        },
        'Lucky Color': 'Gold',
        'Lucky Numbers': '1, 3, 19',
      },
      'Virgo': {
        'Date Range': 'August 23 - September 22',
        'Personality Traits': {
          'Strengths': 'Loyal, analytical, kind',
          'Weaknesses': 'Shyness, worry, overly critical',
        },
        'Lucky Color': 'Gray',
        'Lucky Numbers': '5, 14, 23',
      },
      'Libra': {
        'Date Range': 'September 23 - October 22',
        'Personality Traits': {
          'Strengths': 'Cooperative, diplomatic, gracious',
          'Weaknesses': 'Indecisive, avoids confrontations',
        },
        'Lucky Color': 'Pink',
        'Lucky Numbers': '6, 15, 24',
      },
      'Scorpio': {
        'Date Range': 'October 23 - November 21',
        'Personality Traits': {
          'Strengths': 'Resourceful, brave, passionate',
          'Weaknesses': 'Distrusting, jealous, secretive',
        },
        'Lucky Color': 'Black',
        'Lucky Numbers': '9, 18, 27',
      },
      'Sagittarius': {
        'Date Range': 'November 22 - December 21',
        'Personality Traits': {
          'Strengths': 'Generous, idealistic, great sense of humor',
          'Weaknesses': 'Impatient, tactless, restless',
        },
        'Lucky Color': 'Purple',
        'Lucky Numbers': '3, 12, 21',
      },
      'Capricorn': {
        'Date Range': 'December 22 - January 19',
        'Personality Traits': {
          'Strengths': 'Responsible, disciplined, self-control',
          'Weaknesses': 'Pessimistic, stubborn, miserly',
        },
        'Lucky Color': 'Brown',
        'Lucky Numbers': '4, 8, 13',
      },
      'Aquarius': {
        'Date Range': 'January 20 - February 18',
        'Personality Traits': {
          'Strengths': 'Progressive, original, independent',
          'Weaknesses': 'Runs from emotional expression, temperamental',
        },
        'Lucky Color': 'Blue',
        'Lucky Numbers': '4, 7, 11',
      },
      'Pisces': {
        'Date Range': 'February 19 - March 20',
        'Personality Traits': {
          'Strengths': 'Compassionate, artistic, intuitive',
          'Weaknesses': 'Fearful, overly trusting, sad',
        },
        'Lucky Color': 'Sea Green',
        'Lucky Numbers': '3, 9, 12',
      },
    };

    // Get the details for the selected zodiac sign
    final details = zodiacDetails[selectedZodiacSign] ?? {};

    return Scaffold(
      appBar: AppBar(
        title: Text('$selectedZodiacSign Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (selectedZodiacSign.isNotEmpty) ...[
              Center(
                child: Image.asset(
                  'assets/images/zodiac/$selectedZodiacSign.png', // Updated path for images
                  width: 150,
                  height: 150,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.error,
                      size: 150,
                      color: Colors.red,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Date Range: ${details['Date Range']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[700],
                  fontFamily: 'Piazzolla', // Set the font family here
                ),
              ),
              const SizedBox(height: 10),
              // Personality
              Text(
                'Personality Traits:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[700],
                  fontFamily: 'Piazzolla', // Set the font family here
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Strengths: ${details['Personality Traits']?['Strengths'] ?? 'N/A'}',
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Piazzolla'), // Set the font family here
              ),
              Text(
                'Weaknesses: ${details['Personality Traits']?['Weaknesses'] ?? 'N/A'}',
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Piazzolla'), // Set the font family here
              ),
              const SizedBox(height: 10),
              // Lucky Color
              Text(
                'Lucky Color: ${details['Lucky Color']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[700],
                  fontFamily: 'Piazzolla', // Set the font family here
                ),
              ),
              const SizedBox(height: 5),
              // Lucky Numbers
              Text(
                'Lucky Numbers: ${details['Lucky Numbers']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[700],
                  fontFamily: 'Piazzolla', // Set the font family here
                ),
              ),
            ] else
              const Text(
                'No details available for the selected zodiac sign.',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
