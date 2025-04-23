import 'package:flutter/material.dart';

class EmptyDownloadsView extends StatelessWidget {
  const EmptyDownloadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_download_outlined,
              size: 100,
              color: Colors.grey[700],
            ),
            const SizedBox(height: 20),
            const Text(
              "No downloads yet",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              "Find something to download and watch offline.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to content to download
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text("Find something to download"),
            ),
          ],
        ),
      ),
    );
  }
}
