import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key});

  @override
  Widget build(BuildContext context) {
    // Example categories list
    List<String> categories = ['Movies', 'TV Shows', 'Kids', 'Prime Originals'];

    return SizedBox(
      height: 50, // Set the height of the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text(
                categories[index],
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.grey[800],
            ),
          );
        },
      ),
    );
  }
}
