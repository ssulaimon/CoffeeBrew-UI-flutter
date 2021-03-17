import 'package:coffee_brew/secondCustomized.dart';
import 'package:flutter/material.dart';

import 'customizedCard.dart';

class TabViewOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                child: CustomizedCard(
                  imageUrl: "assets/1.png",
                  coffeeType: "Pure chocolate",
                  price: "\$5.00",
                ),
                onTap: () {
                  Navigator.pushNamed(context, "details", arguments: {
                    "image": "assets/1.png",
                    "coffeeType": "Pure chocolate",
                    "price": "\$5.00"
                  });
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "details", arguments: {
                    "image": "assets/3.png",
                    "coffeeType": "chocolate + Milk",
                    "price": "\$7.00",
                  });
                },
                child: CustomizedCard(
                  imageUrl: "assets/3.png",
                  coffeeType: "chocolate + Milk",
                  price: "\$7.00",
                ),
              ),
              GestureDetector(
                child: CustomizedCard(
                  imageUrl: "assets/4.png",
                  coffeeType: "Light Chocolate",
                  price: "\$8.00",
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    "details",
                    arguments: {
                      "image": "assets/4.png",
                      "coffeeType": "Light Chocolate",
                      "price": "\$8.00",
                    },
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Popular",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SecondCustomized(
          name: "Pure Chocolate",
          price: "\$5.00",
          about: "Made only chocolate no milk added",
          image: "assets/1.png",
        )
      ],
    );
  }
}
