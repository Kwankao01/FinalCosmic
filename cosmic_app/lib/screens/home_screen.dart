import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/zodiac_card.dart';
import '../widgets/moon_card.dart';
import '../widgets/cosmic_card.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    switch (index) {
      case 1:
        Navigator.pushNamed(context, '/history');
        break;
      case 2:
        Navigator.pushNamed(context, '/profile');
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/icon/icon.png',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            const Text(
              'Cosmic',
              style: TextStyle(
                fontFamily: 'Piazzolla',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFf4e5d0),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
                child: IconButton(
                  icon: const Icon(Icons.logout),
                  tooltip: 'Logout',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Horoscope Status Card
              Container(
                child: const SizedBox(
                  height: 150, 
                  child: HoroscopeStatusCard(),
                ),
              ),
              // Moon Card
              InkWell(
                onTap: () async {
                  try {
                    await FirebaseFirestore.instance
                      .collection('DailyHoroStatus')
                      .doc('Status')
                       .set({'Status': true}, SetOptions(merge: true));
                   final result = await Navigator.pushNamed(context, '/daily_horoscope');
                    if (result == 'refresh') {
                       setState(() {});
                     }
                   } catch (e) {
                      print('Error updating status: $e');
                    }
                  },
                 child: const MoonCard(),
              ),

              const SizedBox(height: 16),
              // Zodiac Card
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, '/zodiac', arguments: 'ZODIAC'),
                child: const CosmicCard(
                  title: 'Zodiac',
                  description: 'Cosmic insights tailored to your birth date.',
                  imagePath: 'assets/images/zodiac.png',
                ),
              ),
              const SizedBox(height: 16),
              // Tarot Card
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, '/tarot', arguments: 'Tarot'),
                child: const CosmicCard(
                  title: 'Tarot',
                  description:
                      'Mystical card deck that sparks divination and inspires self-discovery.',
                  imagePath: 'assets/images/tarot.png',
                ),
              ),
              const SizedBox(height: 16),
              // Compatibility Card
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/compatibility',
                    arguments: 'COMPATIBILITY'),
                child: const CosmicCard(
                  title: 'Compatibility',
                  description:
                      'Analyze relationship dynamics based on astrological factors.',
                  imagePath: 'assets/images/compa.png',
                ),
              ),
              const SizedBox(height: 16),
              // Test Database Card
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/test_database',
                    arguments: 'test_database'),
                child: const CosmicCard(
                  title: 'TestDatabase',
                  description:
                      'Mystical card deck that sparks divination and inspires self-discovery.',
                  imagePath: 'assets/images/tarot.png',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF0EBE5),
        selectedItemColor: const Color(0xFF735688),
        unselectedItemColor: const Color.fromARGB(255, 123, 122, 122),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Journal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
