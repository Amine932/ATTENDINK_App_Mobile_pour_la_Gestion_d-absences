import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUsers extends StatelessWidget {
  const GetUsers({super.key, required this.documentid});

  final String documentid;

  @override
  Widget build(BuildContext context) {
    // get the collection
    CollectionReference etudiants =
        FirebaseFirestore.instance.collection("etudiant");
    return FutureBuilder<DocumentSnapshot>(
      future: etudiants.doc(documentid).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text(' ${data['name']}');
        }
        return const Text('Loading ...');
      }),
    );
  }
}
