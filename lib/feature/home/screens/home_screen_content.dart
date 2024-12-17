import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/feature/person/screens/person_image_screen.dart';
import 'package:final_project/feature/person/screens/person_work%20_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget {
  final List searchResults;

  const HomeScreenContent({super.key, required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        var person = searchResults[index];
        return Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonDetailsScreen(person: person),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: person.profilePath != null
                      ? NetworkImage('https://image.tmdb.org/t/p/w200${person.profilePath}')
                      : const AssetImage('assets/no_image.png') as ImageProvider,
                  radius: 30,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  person.name ?? 'Unknown',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonWorksScreen(person: person),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: darkBlue,
                    minimumSize: const Size(80, 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('View Details', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
