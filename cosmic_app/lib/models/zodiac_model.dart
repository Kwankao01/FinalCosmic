import 'package:flutter/foundation.dart';

class ZodiacSign {
  final String name;
  final String description;
  final String imagePath;

  ZodiacSign({
    required this.name,
    required this.description,
    required this.imagePath,
  });
}

class ZodiacModel extends ChangeNotifier {
  final List<ZodiacSign> _zodiacSigns = [
    ZodiacSign(
      name: 'Aries',
      description:
          'Aries is the first sign of the zodiac, representing individuality.',
      imagePath: 'assets/images/zodiac/Aries.png',
    ),
    ZodiacSign(
      name: 'Taurus',
      description: 'Taurus is known for reliability and practicality.',
      imagePath: 'assets/images/zodiac/Taurus.png',
    ),
    ZodiacSign(
      name: 'Gemini',
      description:
          'Gemini symbolizes duality, representing communication and diversity.',
      imagePath: 'assets/images/zodiac/Gemini.png',
    ),
    ZodiacSign(
      name: 'Cancer',
      description:
          'Cancer is deeply intuitive and emotional, representing feelings and family.',
      imagePath: 'assets/images/zodiac/Cancer.png',
    ),
    ZodiacSign(
      name: 'Leo',
      description:
          'Leo is confident and charismatic, representing creativity and leadership.',
      imagePath: 'assets/images/zodiac/Leo.png',
    ),
    ZodiacSign(
      name: 'Virgo',
      description:
          'Virgo is analytical and detail-oriented, representing practicality and organization.',
      imagePath: 'assets/images/zodiac/Virgo.png',
    ),
    ZodiacSign(
      name: 'Libra',
      description:
          'Libra is known for harmony and balance, representing relationships and partnerships.',
      imagePath: 'assets/images/zodiac/Libra.png',
    ),
    ZodiacSign(
      name: 'Scorpio',
      description:
          'Scorpio is passionate and resourceful, representing transformation and intensity.',
      imagePath: 'assets/images/zodiac/Scorpio.png',
    ),
    ZodiacSign(
      name: 'Sagittarius',
      description:
          'Sagittarius loves adventure and optimism, representing exploration and freedom.',
      imagePath: 'assets/images/zodiac/Sagittarius.png',
    ),
    ZodiacSign(
      name: 'Capricorn',
      description:
          'Capricorn is disciplined and responsible, representing ambition and effort.',
      imagePath: 'assets/images/zodiac/Capricorn.png',
    ),
    ZodiacSign(
      name: 'Aquarius',
      description:
          'Aquarius is creative and socially conscious, representing originality and progress.',
      imagePath: 'assets/images/zodiac/Aquarius.png',
    ),
    ZodiacSign(
      name: 'Pisces',
      description:
          'Pisces is empathetic and artistic, representing dreams and intuition.',
      imagePath: 'assets/images/zodiac/Pisces.png',
    ),
  ];

  List<ZodiacSign> get zodiacSigns => _zodiacSigns;
}
