import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:midterm_app/models/question_type.dart';
import 'package:midterm_app/models/tarot_card.dart';
import 'package:midterm_app/models/tarot_deck.dart';
import 'package:midterm_app/models/history.dart';

class TarotScreen extends StatefulWidget {
  final String title;

  const TarotScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<TarotScreen> createState() => _TarotScreenState();
}

class _TarotScreenState extends State<TarotScreen> {
  int _currentIndex = 0;
  QuestionType? selectedQuestionType;
  TarotCard? drawnCard;

  final _formKey = GlobalKey<FormState>();
  String _userQuestion = '';
  TextEditingController _questionController = TextEditingController();

  @override
  void dispose() {
    _questionController.dispose();
    super.dispose();
  }

  void _resetScreen() {
    setState(() {
      selectedQuestionType = null;
      drawnCard = null;
      _userQuestion = '';
      _questionController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _resetScreen();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(
              fontFamily: 'Piazzolla',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildQuestionTypeSelector(),
              if (selectedQuestionType != null) _buildQuestionForm(),
              drawnCard == null
                  ? _buildDrawCardButton()
                  : _buildCardDisplay(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildQuestionTypeSelector() {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: QuestionType.getAllTypes()
            .map((type) => _buildQuestionTypeButton(type))
            .toList(),
      ),
    );
  }

  Widget _buildQuestionTypeButton(QuestionType type) {
    bool isSelected = selectedQuestionType == type;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedQuestionType = type;
          drawnCard = null;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF0b2722) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.transparent : Colors.grey.shade300,
            width: 1,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ],
        ),
        child: Row(
          children: [
            Icon(
              type.icon,
              color: isSelected ? Colors.white : const Color(0xFF0b2722),
              size: 24,
            ),
            SizedBox(width: 8),
            Text(
              type.name,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _questionController,
              decoration: InputDecoration(
                labelText: 'Enter your question',
                border: OutlineInputBorder(),
              ),
              showCursor: true,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) {
                _submitQuestion();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your question';
                }
                return null;
              },
              onSaved: (value) {
                _userQuestion = value!;
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Submit Question'),
              onPressed: _submitQuestion,
            ),
          ],
        ),
      ),
    );
  }

  void _submitQuestion() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Question submitted: $_userQuestion')),
      );
      FocusScope.of(context).unfocus();
    }
  }

  Widget _buildDrawCardButton() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            selectedQuestionType == null
                ? 'Select a question type'
                : 'Ask for ${selectedQuestionType!.name}',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              if (selectedQuestionType != null && _userQuestion.isNotEmpty) {
                setState(() {
                  drawnCard = TarotDeck.drawRandomCard();
                });
                _navigateToResultScreen();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          'Please select a question type and enter your question')),
                );
              }
            },
            child: Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/backcard.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToResultScreen() {
    // Get the correct definition based on the question type
    Map<String, String> cardDefinition =
        drawnCard!.definitions[selectedQuestionType!]!;

    Navigator.pushNamed(
      context,
      '/tarot_result',
      arguments: {
        'cardName': drawnCard!.name,
        'cardSuit': drawnCard!.suit,
        'cardImage': drawnCard!.image,
        'cardDefinition': cardDefinition,
        'userQuestion': _userQuestion,
        'questionType': selectedQuestionType!.name,
      },
    ).then((_) => _resetScreen());

    context.read<HistoryModel>().addCardToHistory(
          drawnCard!.name,
          drawnCard!.suit,
          DateTime.now(),
          selectedQuestionType!.name,
          drawnCard!.image,
          cardDefinition['keyword']!,
          cardDefinition['definition']!, // Pass the definition string
          _userQuestion,
        );
  }

  Widget _buildCardDisplay(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              drawnCard!.image,
              height: 500,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 16),
            Text(
              drawnCard!.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Suit: ${drawnCard!.suit}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
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
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/history');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/profile');
            break;
        }
      },
    );
  }
}
