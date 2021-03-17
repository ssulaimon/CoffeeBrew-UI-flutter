import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondCustomized extends StatelessWidget {
  final String name;
  final String about;
  final String price;
  final String image;

  SecondCustomized({this.name, this.price, this.about, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 25.0, 6.0, 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(name, style: TextStyle(fontSize: 18.0,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(about, style: TextStyle(fontSize: 13.0,color: Colors.white),),
                ),
                Text(price, style: TextStyle(fontSize: 18.0,color: Colors.white),),
              ]
            ),
          ),
          Image(
            image: AssetImage(image),
            width: 100,
            height: 100,
          )
        ],
      ),
      color: Colors.brown,
    );
  }
}
