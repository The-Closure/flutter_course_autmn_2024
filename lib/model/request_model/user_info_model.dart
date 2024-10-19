// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserInfoModel {
  final String username;
  final String password;
  UserInfoModel({
    required this.username,
    required this.password,
  });

  UserInfoModel copyWith({
    String? username,
    String? password,
  }) {
    return UserInfoModel(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory UserInfoModel.fromMap(Map<String, dynamic> map) {
    return UserInfoModel(
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoModel.fromJson(String source) => UserInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserInfoModel(username: $username, password: $password)';

  @override
  bool operator ==(covariant UserInfoModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username &&
      other.password == password;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode;
}
