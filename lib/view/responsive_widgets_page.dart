import 'package:flutter/material.dart';

class ResponsiveWidgetsPage extends StatelessWidget {
  const ResponsiveWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // width: 300,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 300,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // width: 300,
              color: Colors.blue,
            ),
          ),
          // const SizedBox(
          //   width: 200,
          // ),
          const Spacer(
            flex: 5,
          ),
          Flexible(
            flex: 2,
            child: Container(
              width: 200,
              color: Colors.pink,
            ),
          ),
          AspectRatio(
            aspectRatio: 5 / 16,
            child: Container(
              // width: 500,
              color: Colors.black,
              child: FractionallySizedBox(
                alignment: Alignment.topCenter,
                heightFactor: 0.6,
                widthFactor: 0.5,
                child: Container(
                  width: 300,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            // alignment: Alignment.topCenter,
            heightFactor: 0.8,
            child: Container(
              width: 300,
              color: Colors.amber,
              child: const FittedBox(
                child: Text(
                  'Hello Flutter',
                  style: TextStyle(
                    fontSize: 400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
