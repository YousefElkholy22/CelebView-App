import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/feature/favorites/widgets/empty_favorites_view.dart';
import 'package:final_project/feature/favorites/widgets/favorites_appbar.dart';
import 'package:final_project/feature/favorites/widgets/move_list_item.dart';
import 'package:flutter/material.dart';
import 'package:final_project/feature/movie/screens/movie_details.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    final favorites = MovieDetailsScreen.favoriteMovies;

    return Scaffold(
      backgroundColor: lightBackground,
      appBar: const FavoritesAppBar(),
      body: favorites.isEmpty
          ? const EmptyFavoritesView()
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final movie = favorites[index];
                return MovieListItem(
                  movie: movie,
                  onRemove: () {
                    setState(() {
                      favorites.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Removed from Favorites!')),
                    );
                  },
                );
              },
            ),
    );
  }
}
