import 'animal.dart';

void main(List<String> args) {
  B b = B();
  b.hello();
  
  // Animal a = Animal(name: 'spike');
  // a.setId = 1;
  // print(a.id);
  // print(a.name);
  // Animal b = Animal(name: 'kitty');
  // b.setId = 2;
  // print(b.name);
  // print(b.id);

  Dog spike = Dog(name: "Spike");
  spike.setId = 30;
  print(spike.id);
  spike.setColor = "blue";
  print(spike.color);

  Hasky h1 = Hasky(name: "new Haksy");
  h1.bark();

  Dog d1 = Hasky(name: "Complex Relation Dog");
  // d1 as Hasky;
  print(d1.runtimeType);
  d1.bark();

  Cat ketty = Cat(name: "Ketty");

  printAsTheType(spike);
  printAsTheType(ketty);
  printAsTheType(d1);
}
