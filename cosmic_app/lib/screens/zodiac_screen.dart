import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/zodiac_model.dart'; // Assuming you have a zodiac_model.dart

class ZodiacScreen extends StatelessWidget {
  const ZodiacScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final zodiacModel = Provider.of<ZodiacModel>(context);
    final List<ZodiacSign> zodiacSigns =
        zodiacModel.zodiacSigns; // Fetch the zodiac signs

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Zodiac Signs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: zodiacSigns.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (context, index) {
            final ZodiacSign sign =
                zodiacSigns[index]; // Individual zodiac sign
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/zodiac_show',
                    arguments: sign); // Pass the sign details
              },
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12.0),
                        ),
                        child: Image.asset(
                          sign.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        sign.name,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Piazzolla', // Set the font family here
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        sign.description,
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Piazzolla', // Set the font family here
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
