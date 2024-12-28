import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/apis/models/famous_person_model.dart';
import 'package:final_project/feature/movie/widget/favorite_button.dart';
import 'package:final_project/feature/movie/widget/movie_images_carousel.dart';
import 'package:final_project/feature/movie/widget/movie_overview_section.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final KnownFor work;

  static final List<KnownFor> favoriteMovies = [];

  const MovieDetailsScreen({super.key, required this.work});

  @override
  Widget build(BuildContext context) {
    final images = [
      work.backdropPath,
      work.posterPath,
    ].where((path) => path != null).cast<String>().toList();

    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: lightBackground,
        title: Text(
          work.title ?? work.originalTitle ?? 'Unknown',
          style: const TextStyle(color: mediumBlue, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Images Carousel
            MovieImagesCarousel(images: images),

            const SizedBox(height: 16),

            // Movie Title
            Text(
              work.title ?? work.originalTitle ?? 'Unknown',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: darkBlue,
              ),
            ),

            const SizedBox(height: 10),

            // Release Date
            Row(
              children: [
                const Icon(Icons.date_range, color: lightBlue, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Release Date: ${work.releaseDate ?? 'N/A'}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Overview Section
            MovieOverviewSection(overview: work.overview),

            const SizedBox(height: 16),

            // Favorite Button
            FavoriteButton(
              work: work,
              onAddToFavorites: () {
                if (!favoriteMovies.contains(work)) {
                  favoriteMovies.add(work);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Added to Favorites!')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Already in Favorites!')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
