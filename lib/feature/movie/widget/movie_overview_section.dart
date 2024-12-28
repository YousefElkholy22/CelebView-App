import 'package:flutter/material.dart';
import 'package:final_project/core/theming/colors.dart';

class MovieOverviewSection extends StatelessWidget {
  final String? overview;

  const MovieOverviewSection({Key? key, required this.overview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Overview',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mediumBlue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              overview ?? 'No description available.',
              style: const TextStyle(
                fontSize: 16,
                color: mediumBlue,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
