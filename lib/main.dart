import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List names = [
    'Barbeque Nation',
    'JW Cafe',
    'Candy & Green',
    'Romanos',
    'Mabruk - The Mediterranean',
    'Ummrao',
    'White Charcoal',
    'B Desi',
    'Sadanand Coffee House',
    'Blue Spot Cafe',
    'Capsicum Restauran',
    'Essence - Crowne Plaza'
  ];
  int currentIndex = 0;
  void updateIndex() {
    final random = Random();
    final index = random.nextInt(names.length);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What do you want to eat?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                names[currentIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                onPressed: () {
                  updateIndex();
                },
                child: Text(
                  'Pick a Restaurant',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
