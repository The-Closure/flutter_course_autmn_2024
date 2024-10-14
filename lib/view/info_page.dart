import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Tabs'),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Cats',
            ),
            Tab(
              text: 'Mouse',
            ),
            Tab(
              text: 'Dogs',
            )
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(
                      20,
                    ),
                  ),
                ),
                height: 300,
                child: Center(
                  child: const Tooltip(
                    message: 'That was Hello World Word',
                    child: Text(
                      "Hello World",
                      style: TextStyle(fontSize: 6),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
