import 'package:flutter/material.dart';

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock list of images and titles for the continue watching section
    final List<Map<String, String>> continueWatchingList = [
      {
        'title': 'The Boys',
        'image':
            'https://upload.wikimedia.org/wikipedia/en/1/14/The_Boys_Season_2.jpg',
      },
      {
        'title': 'Jack Ryan',
        'image': 'https://upload.wikimedia.org/wikipedia/en/1/12/Jack_Ryan.png',
      },
      {
        'title': 'Hunters',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGaUjVuqeoabZADB9L3lil1pQT-_1WTmMTRQ&s',
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
              'Continue Watching',
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
              itemCount: continueWatchingList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          continueWatchingList[index]['image']!,
                          fit: BoxFit.cover,
                          height: 120.0,
                          width: 90.0, // Width of the image in the scroll
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        continueWatchingList[index]['title']!,
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
