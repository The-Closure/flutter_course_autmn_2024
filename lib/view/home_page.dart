import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Home Page'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Navigator.pop(context);
                },
                child: const Text('Go To Prevoius Page'))
          ],
        ),
      ),
    );
  }
}
