import 'package:cloud_firestore/cloud_firestore.dart';

class HistoryService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveReading({
    required String cardName,
    required String cardSuit,
    required DateTime drawDate,
    required String questionType,
    required String image,
    required String general,
    required String love,
    required String career,
    required String userQuestion,
    required int accuracy,
  }) async {
    try {
      print('Saving reading to Firestore...');
      await _firestore.collection('readings').add({
        'cardName': cardName,
        'cardSuit': cardSuit,
        'drawDate': drawDate,
        'questionType': questionType,
        'image': image,
        'general': general,
        'love': love,
        'career': career,
        'userQuestion': userQuestion,
        'accuracy': accuracy,
      });
      print('Successfully saved reading');
    } catch (e) {
      print('Error saving reading: $e');
      throw e;
    }
  }

  Stream<QuerySnapshot> getReadings() {
    return _firestore
        .collection('readings')
        .orderBy('drawDate', descending: true)
        .snapshots();
  }

  Future<void> updateAccuracy(String docId, double accuracy) async {
    await _firestore.collection('readings').doc(docId).update({
      'accuracy': accuracy.toInt(),
    });
  }

  Future<void> deleteReading(String docId) async {
    try {
      print('Deleting reading with ID: $docId');
      await _firestore.collection('readings').doc(docId).delete();
      print('Successfully deleted reading');
    } catch (e) {
      print('Error deleting reading: $e');
      throw e;
    }
  }
}
