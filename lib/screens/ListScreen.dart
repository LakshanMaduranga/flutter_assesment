import 'package:flutter/material.dart';
import 'package:flutter_assesment/Api_Class.dart';
import 'package:flutter_assesment/screens/DetailsScreen.dart';

class ListScreen extends StatelessWidget {
  late final List<Map<String, dynamic>> dogs;
  ListScreen({required this.dogs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Breeds'),
      ),
      body: ListView.builder(
        itemCount: dogs.length,
        itemBuilder: (context, index) {
          final dog = dogs[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(dog: dog),
                ),
              );
            },
            leading: Image.network(
                dog['https://cdn2.thecatapi.com/${dog['id']}.jpg']),
            title: Text(dog['name']),
          );
        },
      ),
    );
  }
}
