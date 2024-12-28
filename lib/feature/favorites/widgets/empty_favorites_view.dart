import 'package:flutter/material.dart';

class EmptyFavoritesView extends StatelessWidget {
  const EmptyFavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No favorites yet!',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
