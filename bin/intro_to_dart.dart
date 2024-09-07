void main(List<String> args) {
  Person human = Person(name: "Rami", birthDate: DateTime(1990));
  print(human.name);
  print(human.birthDate);
  print(human.getAge());

  Person anoutherHumen = Person(name: "Sami", birthDate: DateTime(2000));
  print(anoutherHumen.getAge());

  Employee empl1 =
      Employee(jop: 'Lower', name: "Noor", birthDate: DateTime(2000));
  print(empl1.getAge());

  Person testPerson =
      Employee(jop: "IT", name: "Mhd", birthDate: DateTime(2020));

  print((testPerson as Employee).jop);
  print(testPerson.runtimeType);

  // ? Example of Simple Inhertince Types
  num counter = 2;
  print(counter.runtimeType);
}

class Person {
  String name;
  DateTime birthDate;
  Person({required this.name, required this.birthDate});

  String getAge() {
    return DateTime.now().difference(birthDate).toString();
  }
}

class Employee extends Person {
  String jop;

  Employee({required this.jop, required super.name, required super.birthDate});
}
