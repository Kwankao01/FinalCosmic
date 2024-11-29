import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DailyHoroscopeScreen extends StatefulWidget {
  const DailyHoroscopeScreen({super.key});

  @override
  _DailyHoroscopeScreenState createState() => _DailyHoroscopeScreenState();
}

class _DailyHoroscopeScreenState extends State<DailyHoroscopeScreen> {
  List<String> aspects = []; // Fetched from Firestore
  List<Map<String, String>> displayedHoroscopes =
      []; // Includes aspect + message
  Set<int> clickedButtons = {}; // Track clicked buttons by index
  String zodiacSign = '';

  final Map<String, List<String>> horoscopesByAspect = {
    "Love": [
      "ความรักของคุณในวันนี้จะเต็มไปด้วยความหวังและความอบอุ่น—อาจมีการพบเจอคนที่ทำให้หัวใจคุณเต้นเร็วขึ้น แต่ต้องระวังการหลงเชื่อในความรู้สึกชั่วขณะ หากคุณเปิดใจรับคนใหม่ๆ อาจจะพบความสัมพันธ์ที่ยั่งยืน",
      "วันนี้คุณอาจต้องเผชิญกับความไม่เข้าใจกันในเรื่องความรัก บางครั้งการพูดคุยที่ตรงไปตรงมาอาจทำให้สถานการณ์ดีขึ้น แต่หากปล่อยให้ความโกรธหรือความเข้าใจผิดเกิดขึ้น จะส่งผลเสียต่อความสัมพันธ์ของคุณ",
      "การกลับมาของความสัมพันธ์เก่าอาจทำให้คุณรู้สึกสับสน คุณอาจจะยังรักหรือผูกพันกับคนนี้อยู่ แต่คุณต้องคิดให้รอบคอบก่อนที่จะตัดสินใจว่าจะเดินหน้าหรือปล่อยให้มันผ่านไป",
      "ความรักในวันนี้อาจจะไปได้ดีหรือแย่ ขึ้นอยู่กับวิธีที่คุณเลือกที่จะรับมือกับสถานการณ์ ใช้สติในการตัดสินใจและอย่าปล่อยให้ความรู้สึกฉับพลันมาบงการ",
    ],
    "Family": [
      "วันนี้คุณอาจจะได้ใช้เวลาร่วมกับครอบครัวมากขึ้น เป็นช่วงเวลาที่ดีในการเสริมสร้างความสัมพันธ์ แต่หากมีความเข้าใจผิดหรือความคิดเห็นที่แตกต่าง อาจทำให้บรรยากาศภายในบ้านตึงเครียดได้",
      "บางครั้งการแสดงความรักและการดูแลเอาใจใส่คนในครอบครัวอาจทำให้คุณรู้สึกเหนื่อยล้า แต่ก็อย่าลืมว่าครอบครัวคือแหล่งพลังงานสำคัญที่ช่วยให้คุณสามารถต่อสู้กับความยากลำบากในชีวิตได้",
      "สมาชิกในครอบครัวอาจต้องการความช่วยเหลือจากคุณในเรื่องใดเรื่องหนึ่ง แต่ต้องระวังไม่ให้เสียความเป็นส่วนตัวหรือเวลาส่วนตัวในการช่วยเหลือพวกเขา",
      "วันนี้อาจจะต้องเผชิญกับความตึงเครียดภายในครอบครัว การพูดคุยอย่างสงบและการเปิดใจรับฟังซึ่งกันและกันจะช่วยให้สถานการณ์ดีขึ้น",
    ],
    "Work": [
      "งานของคุณในวันนี้อาจจะเต็มไปด้วยโอกาสที่ดี การมีสมาธิและทำงานหนักจะนำไปสู่ความสำเร็จที่ยิ่งใหญ่ คุณอาจได้รับคำชมจากหัวหน้า หรือการได้รับโอกาสใหม่ที่ท้าทาย",
      "มีโอกาสที่คุณอาจจะเจออุปสรรคในการทำงาน บางครั้งสิ่งที่คุณคิดว่าจะสำเร็จกลับไม่เป็นไปตามที่คาดหวัง แต่ไม่ต้องวิตกกังวล ความล้มเหลวเป็นแค่การเรียนรู้และจะช่วยให้คุณแข็งแกร่งขึ้น",
      "การทำงานร่วมกับทีมงานอาจจะเป็นทั้งประสบการณ์ที่ดีและการท้าทาย บางครั้งอาจเกิดความขัดแย้งทางความคิด แต่หากคุณสามารถร่วมมือกันได้ จะทำให้ได้ผลลัพธ์ที่ดี",
      "บางทีคุณอาจจะรู้สึกหมดกำลังใจจากงานที่ทำ อาจจะมีการเปลี่ยนแปลงที่ไม่คาดคิด แต่จงอย่ายอมแพ้ คุณสามารถผ่านช่วงเวลาที่ยากลำบากนี้ไปได้",
    ],
    "Study": [
      "การเรียนในวันนี้จะนำมาซึ่งผลลัพธ์ที่ดี คุณจะพบวิธีการเรียนที่เหมาะสมกับตัวเองและสามารถทำให้ผลการเรียนดีขึ้น ถ้าคุณทุ่มเทความพยายามเต็มที่",
      "แต่บางครั้งคุณอาจจะรู้สึกเครียดจากการศึกษา หรือบางบทเรียนอาจทำให้คุณรู้สึกท้อแท้ แต่หากคุณรักษาความอดทนและความพยายาม คุณจะผ่านมันไปได้",
      "วันนี้อาจจะเหมาะสำหรับการหาวิธีการเรียนใหม่ๆ เช่น การใช้สื่อการเรียนออนไลน์ หรือการร่วมกลุ่มเรียนกับเพื่อน การค้นหาวิธีที่เหมาะสมจะทำให้คุณประสบความสำเร็จได้ดียิ่งขึ้น",
      "อาจมีความท้าทายในการศึกษาบางเรื่อง คุณต้องใช้ความพยายามมากขึ้นเพื่อเข้าใจและจำเนื้อหา แต่ถ้าคุณยึดมั่นและทำตามแผนการเรียน จะช่วยให้คุณประสบความสำเร็จ",
    ],
  };

  List<Map<String, dynamic>> dailyHoroscopeData = [];

  @override
  void initState() {
    super.initState();
    _fetchDailyHoroscopeData();
  }

  // New method to navigate to Horoscope History Page
  void _navigateToHoroscopeHistory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HoroscopeHistoryPage(),
      ),
    );
  }

  Future<void> _fetchDailyHoroscopeData() async {
    try {
      final QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('DailyHoroscope').get();

      setState(() {
        dailyHoroscopeData = snapshot.docs.map((doc) {
          return {
            'aspect': doc['aspect'],
            'horoid': doc['horoid'],
            'status': doc['status'],
          };
        }).toList();

        // Update aspects list from Firestore
        aspects = dailyHoroscopeData
            .map((data) => data['aspect'].toString())
            .toList();
      });
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  void _showRandomHoroscope(int index) async {
    if (!clickedButtons.contains(index) &&
        displayedHoroscopes.length < aspects.length) {
      setState(() {
        clickedButtons.add(index);
      });

      final String aspect = aspects[index];
      final List<String>? horoscopes = horoscopesByAspect[aspect];

      if (horoscopes != null) {
        final randomIndex = Random().nextInt(horoscopes.length);
        final String selectedHoroscope = horoscopes[randomIndex];

        // Get the current date in a readable format
        final String formattedDate = DateTime.now().toLocal().toString();

        // Add to displayed horoscopes list
        setState(() {
          displayedHoroscopes.add({
            'aspect': aspect,
            'message': selectedHoroscope,
            'date': formattedDate,
            'note': '', // Add a note field
          });
        });

        // Save to Firebase
        try {
          await FirebaseFirestore.instance
              .collection('DailyHoroscopeHistory')
              .add({
            'Date': Timestamp.now(),
            'Horoscope': selectedHoroscope,
            'Aspect': aspect,
          });
          print('Horoscope saved to Firebase');
        } catch (e) {
          print('Error saving horoscope: $e');
        }
      } else {
        setState(() {
          displayedHoroscopes.add({
            'aspect': aspect,
            'message': "No horoscope available for this aspect.",
            'date': '',
            'note': '', // Add a note field
          });
        });
      }
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
    final String? passedZodiacSign =
        ModalRoute.of(context)?.settings.arguments as String?;
    zodiacSign = passedZodiacSign ?? 'Horoscope';

    return Scaffold(
      backgroundColor: const Color(0xFFF5E6D3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop('refresh'),
        ),
        title: Text(
          zodiacSign.isNotEmpty ? zodiacSign : 'Daily Horoscope',
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontFamily: 'Piazzolla'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.history, color: Colors.black),
            onPressed: _navigateToHoroscopeHistory,
          ),
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
            if (aspects.isEmpty)
              const Center(
                child: CircularProgressIndicator(),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: aspects.length,
                itemBuilder: (context, index) {
                  String aspect = aspects[index];

                  IconData aspectIcon;
                  switch (aspect) {
                    case "Love":
                      aspectIcon = Icons.favorite;
                      break;
                    case "Family":
                      aspectIcon = Icons.family_restroom;
                      break;
                    case "Work":
                      aspectIcon = Icons.work;
                      break;
                    case "Study":
                      aspectIcon = Icons.school;
                      break;
                    default:
                      aspectIcon = Icons.help_outline;
                  }

                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              ' $aspect',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            aspectIcon,
                            size: 24,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ],
                      ),
                      trailing: ElevatedButton(
                        onPressed: () => _showRandomHoroscope(index),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: clickedButtons.contains(index)
                              ? Colors.grey
                              : Colors.green,
                        ),
                        child: Text(
                          clickedButtons.contains(index)
                              ? 'เรียบร้อยแล้ว'
                              : 'ดูดวงวันนี้',
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
              children: displayedHoroscopes.map((horoscope) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${horoscope['aspect']}: ${horoscope['message']}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 5),
                        if (horoscope['date'] != null)
                          Text(
                            "Date: ${horoscope['date']}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class HoroscopeHistoryPage extends StatefulWidget {
  const HoroscopeHistoryPage({super.key});

  @override
  _HoroscopeHistoryPageState createState() => _HoroscopeHistoryPageState();
}

class _HoroscopeHistoryPageState extends State<HoroscopeHistoryPage> {
  List<Map<String, dynamic>> horoscopeHistory = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchHoroscopeHistory();
  }

  Future<void> _fetchHoroscopeHistory() async {
    try {
      final QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('DailyHoroscopeHistory')
          .orderBy('Date', descending: true)
          .get();

      setState(() {
        horoscopeHistory = snapshot.docs.map((doc) {
          return {
            'Date': doc['Date'],
            'Horoscope': doc['Horoscope'],
            'Aspect': doc['Aspect'],
          };
        }).toList();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error fetching history: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horoscope History"),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: horoscopeHistory.length,
              itemBuilder: (context, index) {
                var history = horoscopeHistory[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: Text(history['Aspect']),
                    subtitle: Text(history['Horoscope']),
                    trailing: Text(
                      (history['Date'] as Timestamp)
                          .toDate()
                          .toLocal()
                          .toString(),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
