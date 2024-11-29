import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DailyHoroscopeScreen extends StatefulWidget {
  const DailyHoroscopeScreen({super.key});

  @override
  _DailyHoroscopeScreenState createState() => _DailyHoroscopeScreenState();
}

class _DailyHoroscopeScreenState extends State<DailyHoroscopeScreen> {
  final List<String> aspects = ['Love', 'Family', 'Work', 'Study'];
  List<String> displayedHoroscopes = [];
  Set<int> clickedButtons = {}; // Track clicked buttons by index

  final List<String> randomHoroscopes = [
    "Today is a day for self-love and embracing your unique traits.",
    "Family ties grow stronger as you share cherished moments.",
    "Expect positive developments in your work; stay focused!",
    "A new study method could revolutionize your learning process.",
    "Romance is in the air—open your heart to possibilities.",
    "Spend quality time with family and watch bonds deepen.",
    "Your work ethic is about to pay off—big opportunities await!",
    "Focus on learning and expanding your horizons today.",
  ];

  List<Map<String, dynamic>> dailyHoroscopeData = [];

  @override
  void initState() {
    super.initState();
    _fetchDailyHoroscopeData();
  }

  Future<void> _fetchDailyHoroscopeData() async {
    try {
      final QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('DailyHoroscope').get();

      setState(() {
        dailyHoroscopeData = snapshot.docs.map((doc) {
          return {
            'id': doc.id,
            'aspect': doc['aspect'],
            'horoid': doc['horoid'],
            'status': doc['status'],
          };
        }).toList();
      });
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  void _showRandomHoroscope(int index) {
    if (!clickedButtons.contains(index) && displayedHoroscopes.length < 4) {
      setState(() {
        clickedButtons.add(index);
        final randomIndex = Random().nextInt(randomHoroscopes.length);
        displayedHoroscopes.add(randomHoroscopes[randomIndex]);
      });
    }
  }

  void _refreshPage() {
    setState(() {
      clickedButtons.clear();
      displayedHoroscopes.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5E6D3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Daily Horoscope',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontFamily: 'Piazzolla'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.black),
            onPressed: _refreshPage,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Daily Horoscope Data:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            if (dailyHoroscopeData.isEmpty)
              const Center(
                child: CircularProgressIndicator(),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: aspects.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      title: Text('Aspect: ${aspects[index]}'),
                      trailing: ElevatedButton(
                        onPressed: () => _showRandomHoroscope(index),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: clickedButtons.contains(index)
                              ? Colors.grey
                              : Colors.green,
                        ),
                        child: Text(
                          clickedButtons.contains(index)
                              ? 'Used'
                              : 'Show Horoscope',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            const SizedBox(height: 20),
            const Text(
              'Your Horoscopes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: displayedHoroscopes
                  .map((horoscope) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          horoscope,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
