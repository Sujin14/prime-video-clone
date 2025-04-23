import 'package:flutter/material.dart';
import '../widgets/downloads/empty_downloads_view.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: const EmptyDownloadsView()),
    );
  }
}
