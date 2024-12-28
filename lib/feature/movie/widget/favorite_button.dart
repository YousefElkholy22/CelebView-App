import 'package:flutter/material.dart';
import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/apis/models/famous_person_model.dart';

class FavoriteButton extends StatelessWidget {
  final KnownFor work;
  final VoidCallback onAddToFavorites;

  const FavoriteButton({
    super.key,
    required this.work,
    required this.onAddToFavorites,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton.icon(
        onPressed: onAddToFavorites,
        icon: const Icon(Icons.favorite, color: Colors.red),
        label: const Text(
          'Add to Favorites',
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: mediumBlue,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
