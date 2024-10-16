import 'package:animation_session/style/animation_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mix/mix.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExplicitFavoritePage(),
    );
  }
}

class ImplicitPage extends StatelessWidget {
  const ImplicitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.navigate_before,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Hero(
          tag: 'hello',
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double width = 300;

  double height = 300;

  Color color = Colors.yellow;
  double padding = 8;

  Tween<double> valueOfAnimation = Tween(
    begin: 0,
    end: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: 'hello',
                child: AnimatedPadding(
                  duration: Duration(seconds: 5),
                  padding: EdgeInsets.only(left: padding),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    width: width,
                    height: height,
                    color: color,
                  ),
                ),
              ),
              TweenAnimationBuilder(
                tween: valueOfAnimation,
                duration: const Duration(seconds: 3),
                builder: (context, value, _) {
                  print(value);
                  return Padding(
                    padding: EdgeInsets.only(top: value * 30, left: value * 50),
                    child: Opacity(opacity: value, child: Text("Hello World")),
                  );
                },
              ),
              Lottie.network(
                  'https://lottie.host/725b5f60-979a-4442-827e-641e102146e6/jQWmUcI0HD.json')
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        width = width + 40;
        height = height + 40;
        color = Colors.black;
        padding = 50;
        print(width);
        print(height);
        print(color);
        setState(() {});
      }),
    );
  }
}

class ExplicitFavoritePage extends StatefulWidget {
  const ExplicitFavoritePage({super.key});

  @override
  State<ExplicitFavoritePage> createState() => _ExplicitFavoritePageState();
}

class _ExplicitFavoritePageState extends State<ExplicitFavoritePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;

  late Animation<Color?> color;
  late Animation size;
  late Animation<double> sizeWithCurve;

  @override
  void initState() {
    animation =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    color = ColorTween(begin: Colors.grey, end: Colors.red).animate(animation);
    // ? Replace Sequence code with Curves
    // size = TweenSequence([
    //   TweenSequenceItem(tween: Tween<double>(begin: 20, end: 40), weight: 5),
    //   TweenSequenceItem(tween: Tween<double>(begin: 40, end: 30), weight: 2),
    //   TweenSequenceItem(tween: Tween<double>(begin: 30, end: 40), weight: 2),
    //   TweenSequenceItem(tween: Tween<double>(begin: 40, end: 20), weight: 5),
    // ]).animate(animation);

    sizeWithCurve =
        CurvedAnimation(parent: animation, curve: Curves.elasticInOut);

    size = Tween<double>(begin: 20.0, end: 40.0).animate(sizeWithCurve);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            trailing: AnimatedBuilder(
                animation: animation,
                builder: (context, value) {
                  return IconButton(
                    onPressed: () {
                      if (animation.isCompleted) {
                        animation.reverse();
                      } else {
                        animation.forward();
                      }
                    },
                    icon: Icon(
                      size: size.value,
                      Icons.favorite,
                      color: color.value,
                    ),
                  );
                }),
            title: const Text("Apple"),
            subtitle: const Text(
              "Incididunt adipisicing mollit commodo cupidatat est nisi mollit anim anim eiusmod Lorem.",
              overflow: TextOverflow.visible,
            ),
          ),
          PressableBox(
            style: style,
            child: Center(
              child: Text("Hello"),
            ),
          )
        ],
      ),
    );
  }
}
