import 'package:flutter/material.dart';
import 'package:prime_video_clone/model/banner_model.dart';
import 'package:prime_video_clone/services/banner_services.dart';
import 'package:prime_video_clone/presentation/screens/details_screen.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Banners>>(
      future: BannerService().fetchBanners(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 220,
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return SizedBox(
            height: 220,
            child: Center(
              child: Text(
                'Failed to load banners',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return SizedBox(
            height: 220,
            child: Center(
              child: Text(
                'No banners available',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }

        final banners = snapshot.data!;
        return SizedBox(
          height: 220,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9),
            itemCount: banners.length,
            itemBuilder: (context, index) {
              final banner = banners[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => DetailsScreen(
                            title: banner.title ?? '',
                            imageUrl: banner.image ?? '',
                            description:
                                'A detailed description of ${banner.title} goes here.',
                          ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          banner.image ?? '',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black87, Colors.transparent],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        child: Text(
                          banner.title ?? '',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 6,
                                color: Colors.black54,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
