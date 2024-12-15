import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/models/famous_person_model.dart';
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
    ].where((path) => path != null).toList();

    return Scaffold(
      backgroundColor: lightBackground,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: lightBackground,
        title: Text(
          work.title ?? work.originalTitle ?? 'Unknown',
          style: const TextStyle(color: mediumBlue, fontSize: 17,fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (images.isNotEmpty)
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${images[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image, size: 50),
                      ),
                    );
                  },
                ),
              )
            else
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 200,
                  color: Colors.grey[700],
                  child: const Center(
                    child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                  ),
                ),
              ),

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

            // Overview Header
            Text(
              'Overview',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mediumBlue,
              ),
            ),

            const SizedBox(height: 8),

            // Overview Text
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  work.overview ?? 'No description available.',
                  style: const TextStyle(
                    fontSize: 16,
                    color: mediumBlue,
                    height: 1.5,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Favorite Button
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton.icon(
                onPressed: () {
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
                icon: const Icon(Icons.favorite, color: Colors.red),
                label: const Text('Add to Favorites',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: mediumBlue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
