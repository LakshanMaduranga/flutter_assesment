import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DogService {
  final String apiKey =
      'live_EiABI3r7a4B7VhnZ6FBYUU0tEl8SaOx7tPCYmUvx5k0sJQkpyjrsN7608K0my10R';

  Future<List<Map<String, dynamic>>> fetchDogBreeds() async {
    final response = await http.get(
      Uri.parse(
          'https://api.thecatapi.com/v1/images/search?limit=10&breed_ids=beng&api_key=$apiKey'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['breeds'];
    } else {
      throw Exception('Failed to load dog breeds');
    }
  }
}
