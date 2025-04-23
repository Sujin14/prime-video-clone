class CategoryMovieResponse {
  final Map<String, List<Movie>> moviesByCategory;

  CategoryMovieResponse({required this.moviesByCategory});

  factory CategoryMovieResponse.fromJson(Map<String, dynamic> json) {
    Map<String, List<Movie>> categoryMap = {};
    json['movies'].forEach((key, value) {
      categoryMap[key] = List<Movie>.from(value.map((x) => Movie.fromJson(x)));
    });
    return CategoryMovieResponse(moviesByCategory: categoryMap);
  }
}

class Movie {
  final String title;
  final String image;

  Movie({required this.title, required this.image});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(title: json['title'], image: json['image']);
  }
}
