import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

PageController controller = PageController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: controller,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [FirstPage(), SecondPage(), ThirdPage()],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            controller.nextPage(
                duration: Duration(seconds: 4), curve: Curves.linear);
          },
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            controller.previousPage(
                duration: Duration(seconds: 4), curve: Curves.linear);
          },
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListTile(
        onTap: () {
          controller.jumpToPage(0);
        },
        selected: true,
        selectedColor: Colors.blue,
        title: Text("Hello"),
        subtitle: Text("World From Hello"),
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        trailing: Icon(Icons.start),
      ),
    ));
  }
}
