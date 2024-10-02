// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel {
  int id;
  String title;
  String body;
  PostModel({
    required this.id,
    required this.title,
    required this.body,
  });

  static PostModel fromMapToObject(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'],
      title: map['title'],
      body: map['body'],
    );
  }

  Map<String, dynamic> opjectbToMap() {
    return {
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
