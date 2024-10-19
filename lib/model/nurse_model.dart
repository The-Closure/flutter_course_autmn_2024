// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NurseModel {
  final String name;
  final int age;
  final String phoneNumber;
  NurseModel({
    required this.name,
    required this.age,
    required this.phoneNumber,
  });

  NurseModel copyWith({
    String? name,
    int? age,
    String? phoneNumber,
  }) {
    return NurseModel(
      name: name ?? this.name,
      age: age ?? this.age,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'phoneNumber': phoneNumber,
    };
  }

  factory NurseModel.fromMap(Map<String, dynamic> map) {
    return NurseModel(
      name: map['name'] as String,
      age: map['age'] as int,
      phoneNumber: map['phoneNumber'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NurseModel.fromJson(String source) => NurseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NurseModel(name: $name, age: $age, phoneNumber: $phoneNumber)';

  @override
  bool operator ==(covariant NurseModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.age == age &&
      other.phoneNumber == phoneNumber;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode ^ phoneNumber.hashCode;
}
