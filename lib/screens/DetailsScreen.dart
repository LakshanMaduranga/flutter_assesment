import 'package:flutter/material.dart';
import 'package:flutter_assesment/Api_Class.dart';
import 'package:flutter_assesment/screens/DetailsScreen.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> dog;
  DetailsPage({required this.dog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog['name']),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(dog['https://cdn2.thecatapi.com/images']),
          const SizedBox(height: 20),
          Text(dog['name']),
          const SizedBox(height: 8),
          Text(dog['description']),
          const SizedBox(height: 8),
          Text(dog['temperament']),
          const SizedBox(height: 8),
          Text(dog['life_span']),
          const SizedBox(height: 8),
          Text(dog['origin']),
        ],
      ),
    );
  }
}
