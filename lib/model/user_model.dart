// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String username;
  String password;
  UserModel({
    required this.username,
    required this.password,
  });

  toMap() {
    return {
      "username": username,
      "password": password,
    };
  }
}
