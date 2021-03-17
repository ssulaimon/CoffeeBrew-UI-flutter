import 'package:flutter/material.dart';

class CustomizedCard extends StatelessWidget {
  final String imageUrl;
  final String coffeeType;
  final String price;

  CustomizedCard({this.imageUrl, this.coffeeType, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image: AssetImage(imageUrl),
                height: 150,
                width: 150,
              ),
            ),
            Text(
              coffeeType,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              price,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      color: Colors.brown,
    );
  }
}
