import 'package:flutter/material.dart';
class CustomizedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabs: [
        Text(
          "Hot coco",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        Text(
          "Cappuccino",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        Text(
          "Latte",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        Text(
          "Express",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
