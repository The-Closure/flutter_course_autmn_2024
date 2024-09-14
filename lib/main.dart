// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // alignment: Alignment.center,
                alignment: const Alignment(-1, -1),
                // margin: const EdgeInsets.symmetric(
                //   vertical: 20,
                // ),
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Text(
                  'data',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                // margin: const EdgeInsets.all(100),
                // margin: const EdgeInsets.symmetric(
                //   vertical: 20,
                // ),
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    'data',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                // margin: const EdgeInsets.only(),
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    'data',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('hello'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Image.asset(
                    'assets/images/cat.jpeg',
                    width: 100,
                    height: 100,
                  ),
                  Image.network(
                    'https://www.cdc.gov/healthy-pets/media/images/2024/04/Cat-on-couch.jpg',
                    width: 100,
                    height: 100,
                  )
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FlutterLogo(
                      size: 50,
                    ),
                    const FlutterLogo(
                      size: 50,
                    ),
                    const FlutterLogo(
                      size: 50,
                    ),
                    const FlutterLogo(
                      size: 50,
                    ),
                    const FlutterLogo(
                      size: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: FlutterLogo(
                        size: 100,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      margin: const EdgeInsets.only(top: 20),
                      child: const FlutterLogo(
                        size: 100,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.speed_sharp,
                size: 100,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
