// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginModel {
  String username = 'emilys';
  String password = 'emilyspass';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }



  String toJson() => json.encode(toMap());

}
