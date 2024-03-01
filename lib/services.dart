import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Colorful Boxes'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/auto-repair-3691962.jpg"), // Replace "assets/background.jpg" with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedColorfulBox(color: Colors.red, borderRadius: 20.0, price: "\$10", services: "Garage Services"),
                      SizedColorfulBox(color: Colors.blue, borderRadius: 25.0, price: "\$15", services: "Garage Services"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedColorfulBox(color: Colors.green, borderRadius: 30.0, price: "\$20", services: "Garage Services"),
                      SizedColorfulBox(color: Colors.yellow, borderRadius: 35.0, price: "\$25", services: "Garage Services"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedColorfulBox(color: Colors.orange, borderRadius: 40.0, price: "\$30", services: "Garage Services"),
                      SizedColorfulBox(color: Colors.purple, borderRadius: 45.0, price: "\$35", services: "Garage Services"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedColorfulBox(color: Colors.teal, borderRadius: 50.0, price: "\$40", services: "Garage Services"),
                      SizedColorfulBox(color: Colors.pink, borderRadius: 55.0, price: "\$45", services: "Garage Services"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedColorfulBox(color: Colors.indigo, borderRadius: 60.0, price: "\$50", services: "Garage Services"),
                      SizedColorfulBox(color: Colors.cyan, borderRadius: 65.0, price: "\$55", services: "Garage Services"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SizedColorfulBox extends StatelessWidget {
  final Color color;
  final double borderRadius;
  final String price;
  final String services;

  SizedColorfulBox({required this.color, required this.borderRadius, required this.price, required this.services});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            services,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: Text(price),
          ),
        ],
      ),
    );
  }
}
