import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore package

class HoroscopeStatusCard extends StatefulWidget {
  const HoroscopeStatusCard({super.key});

  @override
  State<HoroscopeStatusCard> createState() => _HoroscopeStatusCardState();
}

class _HoroscopeStatusCardState extends State<HoroscopeStatusCard> {
  bool hasReadHoroscope = false;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late DocumentReference _statusRef;

  @override
  void initState() {
    super.initState();
    _statusRef = _firestore
        .collection('DailyHoroStatus')
        .doc('Status'); // Firestore reference

    // Listen for real-time updates to Firestore
    _statusRef.snapshots().listen((snapshot) {
      if (snapshot.exists) {
        setState(() {
          hasReadHoroscope = snapshot['Status'] ?? false;
        });
      }
    });
  }

  // Function to update Firestore document when the user reads the horoscope
  void _updateHoroscopeStatus() async {
    await _statusRef.update({'Status': true}); // Set the status to true
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _updateHoroscopeStatus, // Update status on tap
      child: StreamBuilder<DocumentSnapshot>(
        stream: _statusRef.snapshots(), // Listen for real-time updates
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text('No data available'));
          }

          // Fetch the Status field from Firestore
          bool status = snapshot.data!['Status'] ?? false;

          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(16.0),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    status ? Icons.check_circle : Icons.error,
                    size: 100,
                    color: status ? Colors.green : Colors.red,
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
                        status
                            ? 'You have read your horoscope today!'
                            : 'You have not read your horoscope today.',
                        style: TextStyle(
                          fontSize: 16,
                          color: status ? Colors.green : Colors.red,
                          fontFamily: 'Piazzolla',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
