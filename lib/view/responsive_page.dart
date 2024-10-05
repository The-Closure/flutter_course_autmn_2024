import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    String screenOrientation = MediaQuery.orientationOf(context).name;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$screenHeight, $screenWidth, $screenOrientation",
              style: const TextStyle(
                fontSize: 100,
              ),
            ),
            Container(
              width: screenWidth / 6,
              height: screenHeight / 2,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constrains) {
        // return Center(
        //   child: Container(
        //     alignment: const Alignment(0, 0),
        //     color: Colors.amber,
        //     width: 300,
        //     height: 300,
        //     child: Text(
        //       constrains.maxWidth.toString(),
        //       style: const TextStyle(
        //         fontSize: 100,
        //       ),
        //     ),
        //   ),
        // );
        if (constrains.maxWidth < 600) {
          return OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Mobile Layout, Portrait',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              );
            } else {
              return Container(
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Mobile Layout, LandScape',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              );
            }
          });
        } else if (constrains.maxWidth < 840) {
          return Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Tablet Layout',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          );
        } else {
          return Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Desktop Layout',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          );
        }
      }),
    );
  }
}
