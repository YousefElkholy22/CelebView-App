import 'package:final_project/core/theming/colors.dart';
import 'package:flutter/material.dart';

class FavoritesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FavoritesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Favorites',
        style: TextStyle(
          color: darkBlue,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: lightBackground,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
