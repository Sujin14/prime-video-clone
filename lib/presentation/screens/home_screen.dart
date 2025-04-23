import 'package:flutter/material.dart';
import '../widgets/banner_section.dart';
import '../widgets/category_chip.dart';
import '../widgets/featured_section.dart';
import '../widgets/continue_watching_section.dart';
import '../widgets/popular_shows.dart';
import '../widgets/watch_in_your_language.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              BannerSection(),
              CategoryChip(),
              FeaturedSection(),
              ContinueWatching(),
              PopularShows(),
              WatchInYourLanguage(),
            ],
          ),
        ),
      ),
    );
  }
}
