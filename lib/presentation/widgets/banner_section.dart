import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Banner Image
        Container(
          height: 220,
          width: double.infinity,
          child: Image.network(
            'https://m.media-amazon.com/images/S/pv-target-images/0393aff2ef3474c5a32f418bcbe6d67a04975157242451aeb0622b94be07f243.jpg',
            fit: BoxFit.cover,
          ),
        ),

        // Gradient Overlay
        Container(
          height: 220,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black87, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),

        // Title
        Positioned(
          bottom: 20,
          left: 20,
          child: Text(
            "The Lord of the Rings",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
