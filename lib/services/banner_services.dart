import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prime_video_clone/model/banner_model.dart';

class BannerService {
  final String url =
      'https://run.mocky.io/v3/d8040c3c-16cb-44a8-89fa-c100c179a8f8';

  Future<List<Banners>> fetchBanners() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final bannerData = BannerClass.fromJson(jsonData);
      return bannerData.banners ?? [];
    } else {
      throw Exception('Failed to load banners');
    }
  }
}
