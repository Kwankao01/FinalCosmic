import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:midterm_app/providers/HoroscopeStatusProvider.dart'; // Make sure to import the provider

class HoroscopeStatusCard extends StatelessWidget {
  const HoroscopeStatusCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using Consumer to listen to changes in the HoroscopeStatusProvider
    return Consumer<HoroscopeStatusProvider>(
      builder: (context, provider, child) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  provider.hasReadHoroscope ? Icons.check_circle : Icons.error,
                  size: 100,
                  color: provider.hasReadHoroscope ? Colors.green : Colors.red,
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horoscope Status',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Piazzolla',
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      provider.hasReadHoroscope
                          ? 'You have read your horoscope today!'
                          : 'You have not read your horoscope today.',
                      style: TextStyle(
                        fontSize: 16,
                        color: provider.hasReadHoroscope
                            ? Colors.green
                            : Colors.red,
                        fontFamily: 'Piazzolla',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
