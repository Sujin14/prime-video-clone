import 'package:flutter/material.dart';
import 'package:prime_video_clone/model/category_movie_model.dart';
import 'package:prime_video_clone/services/movie_services.dart';

class CategoryChip extends StatefulWidget {
  const CategoryChip({super.key});

  @override
  State<CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip> {
  late Future<CategoryMovieResponse> _movieData;
  String _selectedCategory = 'Action';

  @override
  void initState() {
    super.initState();
    _movieData = MovieService.fetchCategoryMovies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CategoryMovieResponse>(
      future: _movieData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final categoryMap = snapshot.data!.moviesByCategory;
        final categories = categoryMap.keys.toList();
        final selectedMovies = categoryMap[_selectedCategory] ?? [];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Chips
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final isSelected = _selectedCategory == category;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: ChoiceChip(
                      label: Text(
                        category,
                        style: TextStyle(
                          color: isSelected ? Colors.black : Colors.white,
                        ),
                      ),
                      selected: isSelected,
                      onSelected: (_) {
                        setState(() {
                          _selectedCategory = category;
                        });
                      },
                      selectedColor: Colors.amber,
                      backgroundColor: Colors.grey[800],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),

            // Movies Grid
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: selectedMovies.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (context, index) {
                final movie = selectedMovies[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(movie.image, fit: BoxFit.cover),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
