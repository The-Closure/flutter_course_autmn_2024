abstract class Animal {
  late int _id;
  String name;

  Animal({required this.name});

  int get id => _id;

  set setId(int id) {
    _id = id;
  }

  walk();
}

class Dog extends Animal {
  late String _color;
  Dog({required super.name});

  String get color => _color;

  set setColor(String color) {
    _color = color;
  }

  bark() {
    print("Hoew Hoew");
  }

  @override
  walk() {
    print("Walking Dog");
  }
}

class Hasky extends Dog {
  Hasky({required super.name});

  @override
  bark() {
    print("Meow Meow");
  }
}

class Cat extends Animal {
  Cat({required super.name});

  @override
  walk() {
    print("Walking Cat");
  }
}

printAsTheType(Animal animal) {
  if (animal.runtimeType == Dog) {
    print("it is a Dog");
  } else if (animal.runtimeType == Cat) {
    print("it is a Cat");
  } else {
    print("it is a Hasky");
  }
}

abstract class A {
  hello();
}

class B extends A {
  @override
  hello() {
    print("object");
  }
}
