import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HoroscopeStatusCard extends StatefulWidget {
  const HoroscopeStatusCard({Key? key}) : super(key: key);

  // Static method to update status from anywhere
  static Future<void> updateStatus(BuildContext context) async {
    final _HoroscopeStatusCardState? state =
        context.findAncestorStateOfType<_HoroscopeStatusCardState>();

    if (state != null) {
      await state.updateHoroscopeStatus();
    }
  }

  @override
  _HoroscopeStatusCardState createState() => _HoroscopeStatusCardState();
}

class _HoroscopeStatusCardState extends State<HoroscopeStatusCard> {
  bool hasReadHoroscope = false;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late DocumentReference _statusRef;

  @override
  void initState() {
    super.initState();
    // Reference to the status document
    _statusRef = _firestore.collection('DailyHoroStatus').doc('Status');

    // Listen to real-time updates
    _statusRef.snapshots().listen((snapshot) {
      if (mounted) {
        setState(() {
          hasReadHoroscope = snapshot.exists &&
                  (snapshot.data() as Map<String, dynamic>?)?['Status'] ??
              false;
        });
      }
    });
  }

  // Method to update horoscope status
  Future<void> updateHoroscopeStatus() async {
    await _statusRef.set(
        {'Status': true, 'Timestamp': FieldValue.serverTimestamp()},
        SetOptions(merge: true));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              hasReadHoroscope ? Icons.check_circle : Icons.error,
              size: 100,
              color: hasReadHoroscope ? Colors.green : Colors.red,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Horoscope Status',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Piazzolla',
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  hasReadHoroscope
                      ? 'You have read your horoscope today!'
                      : 'You have not read your horoscope today.',
                  style: TextStyle(
                    fontSize: 16,
                    color: hasReadHoroscope ? Colors.green : Colors.red,
                    fontFamily: 'Piazzolla',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
