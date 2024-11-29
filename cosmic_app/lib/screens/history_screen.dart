import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:midterm_app/services/history_service.dart';
import 'package:midterm_app/models/history.dart';

class HistoryScreen extends StatelessWidget {
  final HistoryService _historyService = HistoryService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarot Readings'),
        automaticallyImplyLeading: false,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _historyService.getReadings(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No readings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Piazzolla',
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/tarot');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      backgroundColor: const Color.fromARGB(
                          221, 249, 249, 249), // Neutral and minimalist
                      foregroundColor:
                          Color(0xFF735688), // White text for contrast
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Piazzolla',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    child: const Text('starting a new tarot reading'),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final doc = snapshot.data!.docs[index];
              final data = doc.data() as Map<String, dynamic>;
              final cardDraw = CardDraw.fromFirestore(data);

              return Dismissible(
                  key: Key(doc.id),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  direction: DismissDirection.endToStart,
                  confirmDismiss: (direction) async {
                    return await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Delete Reading"),
                          content: Text(
                              "Are you sure you want to delete this reading?"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text("Cancel"),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: Text("Delete"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  onDismissed: (direction) {
                    _historyService.deleteReading(doc.id);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Reading deleted')),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      onTap: () => _showCardDetails(context, cardDraw, doc.id),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cardDraw.userQuestion,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              '${cardDraw.cardName} of ${cardDraw.cardSuit}',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  cardDraw.drawDate
                                      .toLocal()
                                      .toString()
                                      .split(' ')[0],
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[600]),
                                ),
                                if (cardDraw.accuracy != null)
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF735688).withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      'Accuracy: ${cardDraw.accuracy!.round()}%',
                                      style: TextStyle(
                                        color: Color(0xFF735688),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            },
          );
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  void _showCardDetails(BuildContext context, CardDraw cardDraw, String docId) {
    double accuracy = cardDraw.accuracy ?? 0.0;
    showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
        child: Container(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardDraw.userQuestion,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 24),
                  Center(
                    child: Text(
                      '${cardDraw.cardName} of ${cardDraw.cardSuit}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Image.asset(
                      cardDraw.image,
                      height: MediaQuery.of(context).size.height * 0.7,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 24),
                  _buildMeaningSection('General Meaning:', cardDraw.general),
                  _buildMeaningSection('Love Meaning:', cardDraw.love),
                  _buildMeaningSection('Career Meaning:', cardDraw.career),
                  _buildMeaningSection(
                    'Date:',
                    cardDraw.drawDate.toLocal().toString().split(' ')[0],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Accuracy Rating:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => Column(
                      children: [
                        Slider(
                          value: accuracy,
                          min: 0,
                          max: 100,
                          divisions: 10,
                          label: '${accuracy.round()}%',
                          onChanged: (value) {
                            setState(() {
                              accuracy = value;
                            });
                          },
                          onChangeEnd: (value) {
                            _historyService.updateAccuracy(docId, value);
                          },
                        ),
                        Text('${accuracy.round()}%'),
                      ],
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('Close'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMeaningSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(content),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFF0EBE5),
      selectedItemColor: const Color(0xFF735688),
      unselectedItemColor: const Color.fromARGB(255, 123, 122, 122),
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Readings'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/profile');
            break;
        }
      },
    );
  }
}
