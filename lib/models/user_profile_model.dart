import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String userEmail;
  String userName;

  UserModel({
    required this.userEmail,
    required this.userName,
  });

  toJson() {
    return {
      "name": userName,
      "email": userEmail,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      userEmail: data["email"],
      userName: data["name"],
    );
  }
}
