import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_model.dart';

class DailyHoroscopeScreen extends StatefulWidget {
  const DailyHoroscopeScreen({super.key});

  @override
  _DailyHoroscopeScreenState createState() => _DailyHoroscopeScreenState();
}

class _DailyHoroscopeScreenState extends State<DailyHoroscopeScreen> {
  // List of available aspects
  final List<String> aspects = ['Love', 'Family', 'Work', 'Study'];

  // Variable to hold the currently selected aspect
  String selectedAspect = 'Love'; // Default selection

  // List of encouragement quotes
  final List<String> quotes = [
    'Believe in yourself! You are capable of achieving amazing things.',
    'Every day is a new beginning. Take a deep breath and start again.',
    'Your only limit is your mind. Push beyond the boundaries!',
    'Dream big, work hard, and make it happen!',
    'The best way to predict the future is to create it.',
    'Stay positive, work hard, and make it happen.',
    'Success is not for the lazy. Keep pushing forward!',
    'You are stronger than you think. Believe in yourself!',
  ];

  // List of flower image paths
  final List<String> flowerImages = [
    'assets/images/flower/f1.png',
    'assets/images/flower/f2.png',
    'assets/images/flower/f3.png',
    'assets/images/flower/f4.png',
    'assets/images/flower/f5.png',
    'assets/images/flower/f6.png',
    'assets/images/flower/f7.png',
  ];

  // Map containing daily horoscopes for each zodiac sign and aspect
  static const Map<String, Map<String, String>> dailyHoroscopes = {
    'Aries': {
      'Love':
          'You’re gonna turn heads today! Someone new might just stroll into your life and sweep you off your feet. Keep an eye out!',
      'Family':
          'Your fam’s gonna rally together, maybe a little family hangout? Grab some snacks and enjoy quality time!',
      'Work':
          'Boss is gonna notice your hard work today. Get ready for some serious kudos; it’s time to shine!',
      'Study':
          'Focus up, Aries! You might find that extra effort in your studies really pays off. You got this!',
    },
    'Taurus': {
      'Love':
          'Get ready, Taurus! Love vibes are strong today. You might get some sweet surprises in the romance department!',
      'Family':
          'Family might need you a bit more today. Don’t forget to lend a helping hand; your support means a lot!',
      'Work':
          'Smooth sailing on that project of yours! All your hard work is finally paying off, so celebrate the wins!',
      'Study':
          'Keep things tidy and organized; you’ll find studying easier and more fun! You got the power!',
    },
    'Gemini': {
      'Love':
          'Communication is key today, Gemini! Be open with your feelings and watch the romance bloom.',
      'Family':
          'Family gatherings are on the horizon! Enjoy some bonding time and create lovely memories.',
      'Work':
          'Your ideas will shine bright at work today. Don’t hesitate to share them and take the lead!',
      'Study':
          'Stay curious, Gemini! Exploring new subjects will make studying enjoyable and fruitful.',
    },
    'Cancer': {
      'Love':
          'Your sensitivity will be your strength today. Open your heart to those you love.',
      'Family':
          'Family time will bring warmth today. Plan a cozy night in with your loved ones!',
      'Work':
          'Trust your instincts at work; they’ll guide you to the right decisions. Stay confident!',
      'Study':
          'Find a study buddy, Cancer! Collaboration will make learning easier and more fun.',
    },
    'Leo': {
      'Love':
          'Get ready for some passionate moments! Your charm is irresistible today.',
      'Family':
          'You’ll be the life of the family gathering. Spread joy and laughter wherever you go!',
      'Work':
          'Take the spotlight at work! Your leadership skills will shine, and everyone will take notice.',
      'Study':
          'Stay focused, Leo! Channel your creativity into your studies and let your ideas flourish.',
    },
    'Virgo': {
      'Love':
          'Practicality meets romance today. Show your love through thoughtful gestures.',
      'Family':
          'Organize a family project! Working together will strengthen your bonds and create great memories.',
      'Work':
          'Your attention to detail will impress your superiors. Keep up the fantastic work!',
      'Study':
          'Stay organized in your studies, Virgo. A clear plan will help you achieve your goals efficiently.',
    },
    'Libra': {
      'Love':
          'Balance is essential in love today. Make sure to listen as much as you talk.',
      'Family':
          'A family dispute may arise. Use your diplomacy to mediate and bring peace back to the home.',
      'Work':
          'Collaborative efforts will lead to success at work. Embrace teamwork!',
      'Study':
          'Find balance in your studies. A mix of hard work and relaxation will yield great results!',
    },
    'Scorpio': {
      'Love':
          'Your intensity will attract others today. Embrace your passion and let love in.',
      'Family':
          'Family secrets might come to light. Approach with caution and understanding.',
      'Work':
          'Focus on your goals, Scorpio. Your determination will help you overcome any obstacles.',
      'Study':
          'Dive deep into your studies. Your curiosity will lead to profound discoveries!',
    },
    'Sagittarius': {
      'Love':
          'Adventure awaits in love! Be open to new experiences and spontaneity.',
      'Family':
          'Plan a fun outing with family. Adventures will strengthen your bonds!',
      'Work':
          'Explore new ideas at work. Your innovative spirit will inspire your colleagues!',
      'Study':
          'Learning should be fun, Sagittarius. Seek out interactive methods to enhance your understanding.',
    },
    'Capricorn': {
      'Love':
          'Stability is the key to love today. Nurture your relationships with care and responsibility.',
      'Family':
          'Family needs your guidance today. Take the lead and help them navigate any issues.',
      'Work':
          'Hard work will pay off today. Stay focused, and your efforts will be recognized!',
      'Study':
          'Create a study schedule and stick to it. Discipline will bring you success!',
    },
    'Aquarius': {
      'Love':
          'Your uniqueness will shine in love! Don’t be afraid to express your true self.',
      'Family':
          'Open discussions with family can lead to breakthroughs. Share your thoughts openly.',
      'Work':
          'Think outside the box today! Your innovative ideas will make waves at work.',
      'Study':
          'Explore unconventional methods of learning. Your creativity will enhance your studies!',
    },
    'Pisces': {
      'Love':
          'Your empathy will deepen your connections today. Be open to emotional exchanges.',
      'Family':
          'A family member might need your support. Be there for them and lend a listening ear.',
      'Work':
          'Trust your intuition at work; it will guide you to the right choices.',
      'Study':
          'Engage with your studies emotionally. Connecting on a deeper level will enhance your understanding!',
    },
  };

  // Variables to hold the current random quote and flower image
  String randomQuote = '';
  String randomFlowerImage = '';

  @override
  void initState() {
    super.initState();
    _updateRandomElements();
  }

  // Method to update random quote and flower image
  void _updateRandomElements() {
    setState(() {
      randomQuote = quotes[Random().nextInt(quotes.length)];
      randomFlowerImage = flowerImages[Random().nextInt(flowerImages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);
    String zodiacSign = userModel.zodiacSign;
    String userName = userModel.name;

    // Check if the user's zodiac sign is valid and retrieve horoscope
    String horoscope = dailyHoroscopes[zodiacSign] != null
        ? dailyHoroscopes[zodiacSign]![selectedAspect] ??
            'No horoscope available for this aspect.'
        : 'Invalid Zodiac Sign. Please ensure your profile is set correctly.';

    return Scaffold(
      backgroundColor: const Color(0xFFF5E6D3), // Beige background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          zodiacSign.isNotEmpty ? zodiacSign : 'Horoscope',
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontFamily: 'Piazzolla'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting message
            Text(
              'Hi, $userName!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Horoscope Title
            Text(
              'Today\'s Horoscope for $zodiacSign',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            // Aspect Selection Dropdown
            DropdownButtonFormField<String>(
              value: selectedAspect,
              decoration: InputDecoration(
                labelText: 'Select Aspect',
                labelStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Piazzolla'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedAspect = newValue;
                    _updateRandomElements();
                  });
                }
              },
              items: aspects.map<DropdownMenuItem<String>>((String aspect) {
                return DropdownMenuItem<String>(
                  value: aspect,
                  child: Text(
                    aspect,
                    style:
                        const TextStyle(fontSize: 18, fontFamily: 'Piazzolla'),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            // Horoscope Text Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white, // White background
                border: Border.all(color: Colors.black), // Border color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Text(
                horoscope,
                style: const TextStyle(fontSize: 16, fontFamily: 'Piazzolla'),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            // Random Flower Image
            Center(
              child: Image.asset(
                randomFlowerImage,
                height: 150, // Constrain height to prevent overflow
                fit: BoxFit.contain, // Adjust fit as needed
              ),
            ),
            const SizedBox(height: 20),
            // Quote of the Day
            Text(
              'Quote of the Day:',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Piazzolla'),
            ),
            const SizedBox(height: 10),
            Text(
              randomQuote,
              style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Piazzolla'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
