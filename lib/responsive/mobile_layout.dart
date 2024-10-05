import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_session/widgets/app_drawer.dart';
import 'package:responsive_and_adaptive_session/widgets/card_item.dart';
import 'package:responsive_and_adaptive_session/widgets/list_item.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // mainAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return const CardItem();
              },
            ),
          ),
          // SizedBox(
          //   height: MediaQuery.sizeOf(context).height / 16,
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
