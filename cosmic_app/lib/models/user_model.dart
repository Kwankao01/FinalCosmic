import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  String _name = '';
  DateTime? _birthDate;
  String _zodiacSign = '';
  String _zodiacImage = '';
  bool _dailyHoroStatus = false;
  int _userId = 0; // New field for userId

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Getters
  String get name => _name;
  DateTime? get birthDate => _birthDate;
  String get zodiacSign => _zodiacSign;
  String get zodiacImage => _zodiacImage;
  bool get dailyHoroStatus => _dailyHoroStatus;
  int get userId => _userId;

  // Fetch user data from Firestore
  Future<void> fetchUserData(int userId) async {
    try {
      DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(userId.toString()).get();
      if (userDoc.exists) {
        var data = userDoc.data() as Map<String, dynamic>;
        _name = data['name'] ?? '';
        _birthDate = (data['birthDate'] as Timestamp?)?.toDate();
        _zodiacSign = data['zodiacSign'] ?? '';
        _zodiacImage = 'assets/images/zodiac/$_zodiacSign.png';
        _dailyHoroStatus = data['dailyHoroStatus'] ?? false;
        _userId = userId;
        notifyListeners();
      }
    } catch (e) {
      print("Error fetching user data: $e");
    }
  }

  // Update user details in Firestore
  Future<void> updateUserInFirestore() async {
    try {
      await _firestore.collection('users').doc(_userId.toString()).set({
        'name': _name,
        'birthDate': _birthDate,
        'zodiacSign': _zodiacSign,
        'dailyHoroStatus': _dailyHoroStatus,
      });
      notifyListeners();
    } catch (e) {
      print("Error updating user data: $e");
    }
  }

  // Update user details locally and Firestore
  void updateUser(String name, DateTime birthDate, int userId) {
    _name = name;
    _birthDate = birthDate;
    _zodiacSign = _calculateZodiacSign(birthDate);
    _zodiacImage = 'assets/images/zodiac/$_zodiacSign.png';
    _userId = userId;
    updateUserInFirestore(); // Sync with Firestore
    notifyListeners();
  }

  // Update daily horoscope status in Firestore
  Future<void> updateDailyHoroStatusInFirestore(bool status) async {
    _dailyHoroStatus = status;
    try {
      await _firestore.collection('users').doc(_userId.toString()).update({
        'dailyHoroStatus': status,
      });
      notifyListeners();
    } catch (e) {
      print("Error updating daily horoscope status: $e");
    }
  }

  // Reset daily horoscope status at the start of a new day
  void resetDailyHoroStatus() {
    _dailyHoroStatus = false;
    updateDailyHoroStatusInFirestore(_dailyHoroStatus); // Sync with Firestore
    notifyListeners();
  }

  // Calculate Zodiac Sign
  String _calculateZodiacSign(DateTime date) {
    int month = date.month;
    int day = date.day;

    if ((month == 3 && day >= 21) || (month == 4 && day <= 19)) {
      return 'Aries';
    } else if ((month == 4 && day >= 20) || (month == 5 && day <= 20)) {
      return 'Taurus';
    } else if ((month == 5 && day >= 21) || (month == 6 && day <= 20)) {
      return 'Gemini';
    } else if ((month == 6 && day >= 21) || (month == 7 && day <= 22)) {
      return 'Cancer';
    } else if ((month == 7 && day >= 23) || (month == 8 && day <= 22)) {
      return 'Leo';
    } else if ((month == 8 && day >= 23) || (month == 9 && day <= 22)) {
      return 'Virgo';
    } else if ((month == 9 && day >= 23) || (month == 10 && day <= 22)) {
      return 'Libra';
    } else if ((month == 10 && day >= 23) || (month == 11 && day <= 21)) {
      return 'Scorpio';
    } else if ((month == 11 && day >= 22) || (month == 12 && day <= 21)) {
      return 'Sagittarius';
    } else if ((month == 12 && day >= 22) || (month == 1 && day <= 19)) {
      return 'Capricorn';
    } else if ((month == 1 && day >= 20) || (month == 2 && day <= 18)) {
      return 'Aquarius';
    } else if ((month == 2 && day >= 19) || (month == 3 && day <= 20)) {
      return 'Pisces';
    }
    return '';
  }

  // Method to update userId
  void updateUserId(int userId) {
    _userId = userId;
    notifyListeners();
  }
}
