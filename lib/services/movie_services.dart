import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prime_video_clone/model/category_movie_model.dart';

class MovieService {
  static Future<CategoryMovieResponse> fetchCategoryMovies() async {
    final url = Uri.parse(
      'https://run.mocky.io/v3/dffb0b1c-b39f-415d-ad51-ae091d088ae9',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return CategoryMovieResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load category movies');
    }
  }
}
