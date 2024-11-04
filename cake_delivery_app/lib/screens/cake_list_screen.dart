import 'package:flutter/material.dart';
import '../models/cake_data.dart'; // Import sample cake data
import 'cake_detail_screen.dart';

class CakeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Cakes'),
      ),
      body: ListView.builder(
        itemCount: sampleCakes.length, // Number of cakes
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              sampleCakes[index].imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(sampleCakes[index].name), // Cake name
            subtitle: Text('\$${sampleCakes[index].price.toStringAsFixed(2)}'), // Cake price
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CakeDetailScreen(cake: sampleCakes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
