
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Flutter App"),
          leading: const FlutterLogo(),
          actions: const [
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
        body: Container(
          // margin: const EdgeInsets.all(50),
          margin: const EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
          ),
          // padding: const EdgeInsets.all(50),
          padding: const EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(
            // gradient: const LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   colors: [
            //     Colors.brown,
            //     Colors.pink,
            //     Colors.yellow,
            //   ],
            // ),
            // gradient: const RadialGradient(
            //   radius: 0.5,
            //   colors: [
            //     Colors.brown,
            //     Colors.pink,
            //     Colors.yellow,
            //   ],
            // ),
           

            color: Colors.amber,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.blue,
              width: 10,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  20,
                  20,
                ),
                blurRadius: 20,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Color(0xffF8425A),
                offset: Offset(
                  -20,
                  -20,
                ),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          width: 500,
          height: 500,

          child: const Center(
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.green,
              child: Text(
                'Hello Flutter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
