import 'package:flutter/material.dart';

class HoroscopeStatusProvider with ChangeNotifier {
  bool _hasReadHoroscope = false;

  bool get hasReadHoroscope => _hasReadHoroscope;

  // Update the status to true
  void markAsRead() {
    _hasReadHoroscope = true;
    notifyListeners();
  }

  // Reset the status to false (if needed)
  void resetStatus() {
    _hasReadHoroscope = false;
    notifyListeners();
  }
}
