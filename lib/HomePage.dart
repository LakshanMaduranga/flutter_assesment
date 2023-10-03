import 'package:flutter/material.dart';
import 'package:flutter_assesment/Api_Class.dart';
import 'package:flutter_assesment/screens/ListScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DogService _dogService = DogService();
  List<Map<String, dynamic>> _dogs = [];

  @override
  void initState() {
    super.initState();
    _loadDogs();
  }

  Future<void> _loadDogs() async {
    final List<Map<String, dynamic>> dogs = await _dogService.fetchDogBreeds();
    setState(() {
      _dogs = dogs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog Breeds'), // Set your app bar title
      ),
      body: _dogs.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListScreen(dogs: _dogs),
    );
  }
}
