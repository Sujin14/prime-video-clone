import 'package:flutter/material.dart';

class PopularShows extends StatelessWidget {
  const PopularShows({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock list of images and titles for the popular shows section
    final List<Map<String, String>> popularShowsList = [
      {
        'title': 'The Witcher',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYIzM-VJdiRfX4jtM1twR6hYQTqK9qQ5yXdQ&s',
      },
      {
        'title': 'Stranger Things',
        'image':
            'https://upload.wikimedia.org/wikipedia/en/thumb/7/78/Stranger_Things_season_4.jpg/250px-Stranger_Things_season_4.jpg',
      },
      {
        'title': 'The Mandalorian',
        'image':
            'https://m.media-amazon.com/images/M/MV5BNjgxZGM0OWUtZGY1MS00MWRmLTk2N2ItYjQyZTI1OThlZDliXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Popular Shows',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 180.0, // Height of the horizontal scroll list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularShowsList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          popularShowsList[index]['image']!,
                          fit: BoxFit.cover,
                          height: 120.0,
                          width: 90.0, // Width of the image in the scroll
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        popularShowsList[index]['title']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
