import 'package:coffee_brew/buttom.dart';
import 'package:coffee_brew/customizedCard.dart';
import 'package:coffee_brew/secondCustomized.dart';
import 'package:coffee_brew/tabViewOne.dart';
import 'package:flutter/material.dart';

import 'customizedTab.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                child: Text(
                  "Discover",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "New Tasting Experience",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomizedTab(),
              Expanded(
                child: TabBarView(
                  children: [
                   TabViewOne(),
                    TabViewOne(),
                    TabViewOne(),
                    TabViewOne(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bottom()
    );
  }
}
