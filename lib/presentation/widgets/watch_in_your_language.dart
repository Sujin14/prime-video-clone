import 'package:flutter/material.dart';

class WatchInYourLanguage extends StatelessWidget {
  const WatchInYourLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> languageOptions = [
      {
        'language': 'Hindi',
        'image':
            'https://qqcdnpictest.mxplay.com/pic/8f9eb2b9dc634c8efe15be770eebfd1e/en/2x3/312x468/test_pic1736411119303_badged_1744779622098.webp',
      },
      {
        'language': 'Tamil',
        'image':
            'https://static.toiimg.com/thumb/msid-118516391,width-1280,height-720,imgsize-63354,resizemode-6,overlay-toi_sw,pt-32,y_pad-40/photo.jpg',
      },
      {
        'language': 'Malayalam',
        'image':
            'https://upload.wikimedia.org/wikipedia/en/3/35/L2_-_Empuraan_poster.jpg',
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
              'Watch in Your Language',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: languageOptions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          languageOptions[index]['image']!,
                          height: 100,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        languageOptions[index]['language']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
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
