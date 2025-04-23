import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> movies = [
      {
        'title': 'Oppenheimer',
        'image':
            'https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Oppenheimer_%28film%29.jpg/250px-Oppenheimer_%28film%29.jpg',
      },
      {
        'title': 'Barbie',
        'image':
            'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p13472534_p_v8_am.jpg',
      },
      {
        'title': 'Avatar 2',
        'image':
            'https://upload.wikimedia.org/wikipedia/en/5/54/Avatar_The_Way_of_Water_poster.jpg',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return Card(
                color: Colors.grey[900],
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Image.network(movie['image']!, width: 50),
                  title: Text(
                    movie['title']!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: const Text('Rent'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
