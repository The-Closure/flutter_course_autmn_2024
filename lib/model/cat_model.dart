class CatModel {
  String name;
  String origin;
  String image;
  CatModel({
    required this.name,
    required this.origin,
    required this.image,
  });

  static fromMap(Map<String, dynamic> map) {
    return CatModel(
      name: map['name'],
      origin: map['origin'],
      image: map['image'],
    );
  }

  toMap() {
    return {"name": name, "origin": origin, "image": image};
  }
}
