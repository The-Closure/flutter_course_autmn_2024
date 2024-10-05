import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        color: Colors.grey.shade300,
      ),
    );
  }
}
