import 'package:flutter/material.dart';

class MoonCard extends StatelessWidget {
  const MoonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: const Color(0xFF2d1041),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('TODAY\'S Horoscope',
                style: TextStyle(color: Colors.white)),
            const Text('Full Moon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const Text('62% Illuminated',
                style: TextStyle(color: Colors.white)),
            const Text('2 days old', style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('CALENDAR',
                        style: TextStyle(color: Colors.white))),
                TextButton(
                    onPressed: () {},
                    child: const Text('INFO',
                        style: TextStyle(color: Colors.white))),
                TextButton(
                    onPressed: () {},
                    child: const Text('READING',
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
