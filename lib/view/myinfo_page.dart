import 'package:auth_and_jwt/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyinfoPage extends StatelessWidget {
  const MyinfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getMyInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          } else if(snapshot.hasError) {
            return Text("You NEED TOKEN !!!1");
          }else{
             return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
