import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Example list of featured images (could be movies, shows, etc.)
    List<String> featuredImages = [
      'https://preview.redd.it/qf4r707kllid1.jpeg?width=640&crop=smart&auto=webp&s=38435cbf9fdea5dc341e1edfe278874481654a8d',
      'https://img.rgstatic.com/content/movie/be4b37a6-a8c3-476c-996f-3b9d2aaabfd5/poster-185.jpg',
      'https://img.rgstatic.com/content/movie/a3498cfd-f2cf-46ab-b9dc-6999282adf22/poster-185.jpg',
    ];

    return SizedBox(
      height: 220, // Height for the featured section
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featuredImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                featuredImages[index],
                fit: BoxFit.cover,
                width: 150, // Width of each image
              ),
            ),
          );
        },
      ),
    );
  }
}
