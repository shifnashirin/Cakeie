import 'package:flutter/material.dart';
import '../models/cake.dart'; // Import the Cake model

class CakeDetailScreen extends StatelessWidget {
  final Cake cake; // We will pass a Cake object to this screen

  CakeDetailScreen({required this.cake}); // Constructor to receive cake object

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cake.name), // Use cake name as title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cake.name,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              cake.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              '\$${cake.price.toStringAsFixed(2)}', // Display price
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
