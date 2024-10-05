import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/card_item.dart';
import '../widgets/list_item.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width > 840
          ? null
          : AppBar(
              backgroundColor: Colors.grey,
            ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 1,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
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
