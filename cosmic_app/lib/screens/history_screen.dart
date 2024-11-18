import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:midterm_app/models/history.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarot Journal'),
        automaticallyImplyLeading: false,
      ),
      body: Consumer<HistoryModel>(
        builder: (context, historyModel, child) {
          return historyModel.cardHistory.isEmpty
              ? Center(
                  child: Text(
                    'No history available',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                )
              : ListView.builder(
                  itemCount: historyModel.cardHistory.length,
                  itemBuilder: (context, index) {
                    final cardDraw = historyModel.cardHistory[index];
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: ListTile(
                        title: Text(
                            '${cardDraw.cardName} of ${cardDraw.cardSuit}'),
                        subtitle: Text(
                          '${cardDraw.questionType}\n${cardDraw.drawDate.toLocal().toString().split(' ')[0]}',
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Container(
                                  width: double.maxFinite,
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            cardDraw.questionType,
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 16),
                                          Text(
                                            cardDraw.userQuestion,
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(height: 24),
                                          Center(
                                            child: Text(
                                              '${cardDraw.cardName} of ${cardDraw.cardSuit}',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Center(
                                            child: Image.asset(
                                              cardDraw.image,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.4, // Increased image size
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(height: 24),
                                          Text(
                                            'Keyword:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(cardDraw.keyword),
                                          Text(
                                            'Definition:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(cardDraw.definition),
                                          SizedBox(height: 16),
                                          Text(
                                            'Date:',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(cardDraw.drawDate
                                              .toLocal()
                                              .toString()
                                              .split(' ')[0]),
                                          SizedBox(height: 16),
                                          Center(
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Close'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                );
        },
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
        currentIndex: 1, // Set to show 'Journal' as selected
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              // Already on Journal screen
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
