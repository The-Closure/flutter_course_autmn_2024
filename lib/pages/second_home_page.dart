import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FireStore DB'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FirebaseFirestore db = FirebaseFirestore.instance;
          final city = <String, String>{
            "name": "Los Angeles",
            "state": "1111111111111111111111111111",
            "country": "USA"
          };

          db.collection("cities").add(city);
          db.collection('users').doc('1').delete();
        },
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!;
            return Center(
              child: Text(
                data.docs[0].data().toString(),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
