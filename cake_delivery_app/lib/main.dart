import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; 
import '';// Import the HomeScreen file

void main() {
  runApp(CakeDeliveryApp());
}

class CakeDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cakeie',
      theme: ThemeData(
        primarySwatch: Colors.pink,  // Sets a pink color theme
      ),
      home: HomeScreen(),  // Sets HomeScreen as the first screen
    );
  }
}
