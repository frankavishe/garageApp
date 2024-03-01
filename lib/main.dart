import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PictureBackgroundPage(),
    );
  }
}

class PictureBackgroundPage extends StatefulWidget {
  @override
  _PictureBackgroundPageState createState() => _PictureBackgroundPageState();
}

class _PictureBackgroundPageState extends State<PictureBackgroundPage> {
  String _selectedOption = 'BREAKDOWN'; // Initial selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/garage1.jpg'), // Corrected image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FIX YOUR CAR NOW',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20), // Adding spacing between subtitle and dropdown menu
              DropdownButton<String>(
                value: _selectedOption,
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    // Update the selected option when it changes
                    setState(() {
                      _selectedOption = newValue;
                    });
                  }
                },
                items: <String>['BREAKDOWN', 'SERVICE', 'REQUEST TECHNICIAN']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  );
                }).toList(),
                dropdownColor: Colors.black, // Customize dropdown menu color
              ),
              SizedBox(height: 20), // Adding spacing between dropdown menu and button
              ElevatedButton(
                onPressed: () {

                  // Action to perform when the button is pressed
                  print('Submit button pressed!');
                  // You can add your submission logic here
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
