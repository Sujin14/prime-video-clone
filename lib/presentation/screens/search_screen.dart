import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> allMovies = [
    'Oppenheimer',
    'Barbie',
    'Avatar 2',
    'The Batman',
    'Inception',
    'Interstellar',
    'John Wick',
  ];

  String query = '';

  @override
  Widget build(BuildContext context) {
    final filteredMovies =
        allMovies
            .where((movie) => movie.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search movies...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  filled: true,
                  fillColor: Colors.grey[900],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    query = value;
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredMovies.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      filteredMovies[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
