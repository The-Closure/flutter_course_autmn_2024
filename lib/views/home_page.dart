import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  double containerWidth = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: containerWidth,
          height: 300,
          color: Colors.red,
          child: Center(
            child: InkWell(
              onTap: () {
                print("before change: $containerWidth");
                containerWidth = 500;
                print("after change: $containerWidth");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 100,
                height: 50,
                child: const Center(
                  child: Text('Change Color'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  double containerWidth = 300;
  bool? isChecked = false;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        surfaceTintColor: Colors.pink,
        backgroundColor: Colors.grey.shade300,
        shadowColor: Colors.amber,
        shape: const RoundedRectangleBorder(),
        child: const Column(
          children: [
            // DrawerHeader(
            //   child: Column(
            //     children: [
            //       CircleAvatar(),
            //     ],
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text('Mohammad'),
              accountEmail: Text('Mohammad@gmai.com'),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Langauge'),
              leading: Icon(Icons.language),
            ),
            ListTile(
              title: Text('Theme'),
              leading: Icon(Icons.dark_mode),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
            ),
            SizedBox(
              height: 400,
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              width: containerWidth,
              height: 300,
              color: Colors.red,
              child: Center(
                child: InkWell(
                  onTap: () {
                    print("before change: $containerWidth");
                    setState(() {
                      containerWidth = 500;
                    });
                    print("after change: $containerWidth");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 100,
                    height: 50,
                    child: const Center(
                      child: Text('Change Color'),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Red'),
                Tooltip(
                  message: 'hello',
                  child: Checkbox(
                    tristate: true,
                    value: isChecked,
                    activeColor: Colors.green,
                    checkColor: Colors.brown,
                    focusColor: Colors.deepOrange,
                    hoverColor: Colors.teal,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue;
                      });
                      print(isChecked);
                    },
                  ),
                ),
              ],
            ),
            Slider(
              activeColor: Colors.yellow,
              thumbColor: Colors.green,
              inactiveColor: Colors.pink,
              label: sliderValue.toInt().toString(),
              min: 0.0,
              max: 10,
              divisions: 10,
              value: sliderValue,
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue;
                });
                print(sliderValue.toInt());
              },
            )
          ],
        ),
      ),
    );
  }
}
