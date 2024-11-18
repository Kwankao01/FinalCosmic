import 'package:flutter/material.dart';
import '../screens/zodiac_show_screen.dart'; // Ensure this import is correct

class ZodiacCard extends StatelessWidget {
  final String name;
  final String zodiacSign;

  const ZodiacCard({super.key, required this.name, required this.zodiacSign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ZodiacShowScreen(zodiacSign: zodiacSign), // Pass zodiacSign
          ),
        );
      },
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16.0),
        color: Colors.white, // Set background color to white
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Enlarged Zodiac sign image
              Image.asset(
                'assets/images/zodiac/$zodiacSign.png', // Updated path for images
                width: 100, // Adjust width here to enlarge
                height: 100, // Adjust height here to enlarge
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.error,
                    size: 100,
                    color: Colors.red,
                  );
                },
              ),
              const SizedBox(width: 16.0),
              // Display user's name, Zodiac sign, and additional info with 'Piazzolla' font
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name, // User's name
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Piazzolla', // Apply 'Piazzolla' font
                    ),
                  ),
                  Text(
                    'You are $zodiacSign !!', // User's Zodiac sign
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Piazzolla', // Apply 'Piazzolla' font
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Click to see more information', // Additional text
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors
                          .grey, // Set the color to grey for a subtle look
                      fontFamily: 'Piazzolla', // Apply 'Piazzolla' font
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
