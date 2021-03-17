import 'package:flutter/material.dart';
class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          color:  Colors.brown,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),

        child: Row(
          children: [
            SizedBox(
              width: 50.0,
            ),
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            SizedBox(
              width: 30.0,
            ),
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: 30.0,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
            )
          ],
        ),
      ),
      elevation: 0.0,
    );
  }
}
