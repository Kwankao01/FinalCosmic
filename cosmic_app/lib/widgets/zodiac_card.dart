import 'package:flutter/material.dart';
import '../screens/zodiac_show_screen.dart';

class ZodiacCard extends StatelessWidget {
  final String name;
  final String zodiacSign;
  final bool dailyHoroStatus; // Corrected field name

  const ZodiacCard({
    super.key,
    required this.name,
    required this.zodiacSign,
    required this.dailyHoroStatus, // Receive dailyHoroStatus
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ZodiacShowScreen(zodiacSign: zodiacSign),
          ),
        );
      },
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                'assets/images/zodiac/$zodiacSign.png',
                width: 100,
                height: 100,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.error,
                    size: 100,
                    color: Colors.red,
                  );
                },
              ),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Piazzolla',
                    ),
                  ),
                  Text(
                    'You are $zodiacSign !!',
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Piazzolla',
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Click to see more information',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontFamily: 'Piazzolla',
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Show the daily horoscope status
                  Text(
                    dailyHoroStatus
                        ? 'You’ve read today’s horoscope!'
                        : 'You haven’t read today’s horoscope yet.',
                    style: TextStyle(
                      fontSize: 16,
                      color: dailyHoroStatus ? Colors.green : Colors.red,
                      fontFamily: 'Piazzolla',
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
