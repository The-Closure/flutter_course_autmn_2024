import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intro_to_restapi/view/cat_page.dart';

void main() {
  runApp(const MyApp());
}

Future<List<dynamic>> getCat() async {
  Dio request = Dio();
  Response response = await request.get("https://freetestapi.com/api/v1/cats");
  print(response);
  print(response.data);
  log("-----------------------");
  print(response.headers);

  log("-----------------------");
  print(response.statusMessage);
  print(response.statusCode);
  return response.data;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatPageWithModel(),
    );
  }
}

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () async {
                data = await getCat();
                setState(() {});
              },
              child: const FlutterLogo(),
            ),
            data.isEmpty
                ? const CircularProgressIndicator()
                : SizedBox(
                    height: 500,
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(data[index]['name']),
                        subtitle: Text(data[index]['origin']),
                        leading: Image.network(data[index]['image']),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
