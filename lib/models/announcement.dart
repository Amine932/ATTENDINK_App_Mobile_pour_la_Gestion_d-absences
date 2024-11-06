import 'package:cloud_firestore/cloud_firestore.dart';

class Announcement {
  final String title;
  final String content;
  final Timestamp createdAt;

  Announcement({
    required this.title,
    required this.content,
    required this.createdAt,
  });

  factory Announcement.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Announcement(
      title: data['title'] ?? '',
      content: data['description'] ?? '',
      createdAt: data['createdAt'] ?? Timestamp.now(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'content': content,
      'createdAt': createdAt,
    };
  }
}
