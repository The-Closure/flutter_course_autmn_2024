// ignore_for_file: public_member_api_docs, sort_constructors_first
Function askQuestion = () {
  return "Hello";
};

familyOfFuction(Function f1, String message) {
  print(f1() + "---" + message);
}

class Animal {
  String message;
  String example;
  Animal._({
    required this.message,
    required this.example,
  });

  static Animal animal =
      Animal._(message: "New Message", example: "New Example");

  static getInstance() {
    return animal;
  }
}

main() async {
  Animal example1 = Animal.getInstance();

  Animal example2 = Animal.getInstance();

  if (example2 == example1) {
    print("yes");
  } else {
    print("no");
  }

  
  double result = 100 / 0;
  print(result);

  try {
    print(example1.toString() as int);
  } catch (e) {
    print(e);
  }

  int counter = 20;
  print(counter.toString());
  // familyOfFuction(askQuestion, "New Message");

  // var message = sayHello();
  // print("object");
  // print(await message);
  // hellos("Don't");
}

Future<String> sayHello() async {
  await Future.delayed(Duration(seconds: 3));
  return "Hello From Future";
}

getHello(String name) {
  print("Stolen Hello ${name}");
}

Function hellos = getHello;
