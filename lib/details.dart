import 'dart:math';
import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

double finalPrice = 20.00;
String sized = "S";
int quantity = 1;

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    Future<void> showDialogue(String order) {
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              elevation: 10,
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Icon(Icons.check, size: 110, color: Colors.brown,),
                    Text("Order Complete", style: TextStyle(fontSize: 20.00),),
                    SizedBox(height: 10,),
                    Text(order, style: TextStyle(fontSize: 15.0),),
                  ],
                ),
              ),
              actions: [
                FlatButton.icon(
                  icon: Icon(Icons.cancel, color: Colors.brown,),
                  label: Text("Close", style: TextStyle(color: Colors.brown),),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

    Map map = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
      ),
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          Image(
            image: AssetImage(map["image"]),
            width: 300,
            height: 300,
          ),
          Expanded(
            flex: 1,
            child: Container(
              constraints: BoxConstraints.expand(width: double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hot Coco",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      map["coffeeType"],
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "This is a Hot coco without the addition of milk, sugar, cream or added flavour",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            child: Text(
                              "S",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.black,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: () {
                            setState(() {
                              sized = "S";
                              finalPrice = 20.00;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          child: Container(
                            child: Text(
                              "M",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.black,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: () {
                            setState(() {
                              sized = "M";
                              finalPrice = 25.00;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          child: Container(
                            child: Text(
                              "L",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.black,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: () {
                            setState(() {
                              sized = "L";
                              finalPrice = 30.00;
                            });
                          },
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  setState(() {
                                    if(quantity == 1){
                                      return null;
                                    }else{
                                      quantity --;
                                    }
                                  });
                                },
                              ),
                              Text(
                                quantity.toString(),
                                style: TextStyle(fontSize: 20.0),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  setState(() {
                                    quantity ++;
                                  });
                                },
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Text(
                      "Total Price",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$$finalPrice",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          width: 150.0,
                        ),
                        FlatButton(
                          color: Colors.brown,
                          onPressed: () {
                            int random = Random().nextInt(11);
                            showDialogue("Your order No. 42424242${random.toString()}");
                          },
                          child: Text(
                            "Checkout",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
