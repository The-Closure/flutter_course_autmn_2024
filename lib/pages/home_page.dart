import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Time DB'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          DatabaseReference ref = FirebaseDatabase.instance.ref();

          // await ref.set({
          //   "name": "John",
          //   "age": 18,
          //   "address": {"line1": "100 Mountain View"}
          // });
          await ref.update({
            "age": 100,
          });
          ref.onValue.listen(
            (event) {
              print(event.snapshot.value);
            },
          );
        },
      ),
      body: StreamBuilder(
        stream: FirebaseDatabase.instance.ref().onValue,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!;
            return Center(
              child: Text(
                data.snapshot.value.toString(),
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
